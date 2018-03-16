//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Adrian Setniewski on 16.03.2018.
//  Copyright © 2018 Adrian Setniewski. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    @IBAction func closePresed(_ sender: Any) {
        // Dismiss would go back to login
        // This way I go straightly to Channel
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
