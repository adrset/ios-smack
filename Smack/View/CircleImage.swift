//
//  CircleImage.swift
//  Smack
//
//  Created by Adrian Setniewski on 29.03.2018.
//  Copyright © 2018 Adrian Setniewski. All rights reserved.
//

import UIKit
class CircleImage: UIImageView {
    override func awakeFromNib() {
        setupView()
    }

    func setupView(){
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    
}

