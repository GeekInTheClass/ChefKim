//
//  UIRoundButton.swift
//  Recipick
//
//  Created by ParkDongHyuck on 2017. 5. 25..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import Foundation
import UIKit

class UIRoundPrimaryButton: UIButton {
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
        /*
         self.layer.cornerRadius: 모서리 둥글기를 결정합니다. 값이 커질 수록 모서리가 둥글둥글해집니다.
         self.backgroundColor: 버튼의 배경색을 결정합니다.
         self.tintColor: 버튼의 TextColor를 결정한다고 생각하시면 됩니다.
         self.layer.borderColor: 버튼의 외곽선 컬러를 결정합니다.
         self.layer.borderWidth: 버튼의 외곽선 두께를 결정합니다. 값이 커질 수록 외곽선이 두꺼워집니다.
         */
        self.layer.cornerRadius = 15.0
    }
}
