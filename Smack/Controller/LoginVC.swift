//
//  LoginVC.swift
//  Smack
//
//  Created by Adrian Setniewski on 16.03.2018.
//  Copyright © 2018 Adrian Setniewski. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var createAccountBtn: UIButton!
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedOutside()
        // Do any additional setup after loading the view.
    }

    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
