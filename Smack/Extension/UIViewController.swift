//
//  UIViewController.swift
//  Smack
//
//  Created by Adrian Setniewski on 17.03.2018.
//  Copyright © 2018 Adrian Setniewski. All rights reserved.
//

import Foundation

extension UIViewController {
    
    func hideKeyboardWhenTappedOutside(){
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
       
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
}
