//
//  UserDataService.swift
//  Smack
//
//  Created by Adrian Setniewski on 17.03.2018.
//  Copyright © 2018 Adrian Setniewski. All rights reserved.
//

import Foundation

class UserDataService {
    static let instance = UserDataService()
    
    public private(set) var id = ""
    
    public private(set) var avatarColor = ""
    
    public private(set) var avatarName = ""
    
    public private(set) var email = ""
    
    public private(set) var name = ""


    func setUserData(id: String, avatarColor: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarColor = avatarColor
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    
    func setAvatarName(avatarName: String){
        self.avatarName = avatarName
    }

    
}
