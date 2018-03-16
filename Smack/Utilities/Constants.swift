//
//  Constants.swift
//  Smack
//
//  Created by Adrian Setniewski on 16.03.2018.
//  Copyright © 2018 Adrian Setniewski. All rights reserved.
//

import Foundation

// Url
let BASE_URL = "http://parala.xyz:42313/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"

// typedef
typealias CompletionHandler = (_ Success: Bool) -> ()

// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// User defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
