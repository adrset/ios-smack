//
//  AuthService.swift
//  Smack
//
//  Created by Adrian Setniewski on 16.03.2018.
//  Copyright © 2018 Adrian Setniewski. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class AuthService {
    //Singleton
    static let instance = AuthService()
    
    let defaults = UserDefaults.standard
    
    var isLoggedIn: Bool {
        get {
            return defaults.bool(forKey: LOGGED_IN_KEY)
        }
        set {
            defaults.set(newValue, forKey: LOGGED_IN_KEY)
        }
    }
    
    var authToken: String {
        get { // Casting as string beacuse it can return 'Any?'
            return defaults.value(forKey: TOKEN_KEY) as! String
        }
        
        set {
            defaults.set(newValue, forKey: TOKEN_KEY)
        }
    }
    
    var userEmail: String {
        get { // Casting as string beacuse it can return 'Any?'
            return defaults.value(forKey: USER_EMAIL) as! String
        }
        
        set {
            defaults.set(newValue, forKey: USER_EMAIL)
        }
    }
    
    
    // Web requests are async.
    func registerUser(email: String, password: String, completion: @escaping CompletionHandler) {
        
        let lowerCaseEmail = email.lowercased()
        
        let body: [String:Any] = [
            "email" : lowerCaseEmail,
            "password" : password
        ]
        
        Alamofire.request(URL_REGISTER, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseString { (response) in
            if response.result.error == nil {
                completion(true)
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
        
    }
    
    func loginUser(email: String, password: String, completion: @escaping CompletionHandler) {
        let lowerCaseEmail = email.lowercased()
        
        let body: [String:Any] = [
            "email" : lowerCaseEmail,
            "password" : password
        ]
        
        Alamofire.request(URL_LOGIN, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseJSON { (response) in
            if response.error == nil {
                
                // If it can be decoded without errors then
                /* if let json = response.result.value as? Dictionary <String, Any> {
                    // If there is a field with key user that is actually a String then
                    if let email = json["user"] as? String {
                        self.userEmail = email
                    }

                    if let token = json["token"] as? String {
                        self.authToken = token
                    }
                    
                }*/
                
                // Another approach
                guard let data = response.data else { return }
                
                do {
                
                let json = try JSON(data: data)
                
                
                // Automatically unwraps!!!
                self.userEmail = json["user"].stringValue
                
                self.authToken = json["token"].stringValue
                
                }catch {
                    print("Error \(error)")
                }
                // Successfuly logged in
                self.isLoggedIn = true
                
                completion(true)
            }else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
        
        
    }
    
    
    
}
