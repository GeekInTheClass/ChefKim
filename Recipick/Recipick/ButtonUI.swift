//
//  ButtonUI.swift
//  Recipick
//
//  Created by SangU on 2017. 5. 24..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import UIKit
class UIRoundPrimaryButton: UIButton{
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 5.0;
        self.backgroundColor = UIColor(red: 255/255, green: 132/255, blue: 102/255, alpha: 1)
        self.tintColor = UIColor.white
    }
}
