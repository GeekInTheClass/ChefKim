//
//  RecommendedTagCollectionViewCell.swift
//  Recipick
//
//  Created by ParkDongHyuck on 2017. 6. 11..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import UIKit

class RecommendedTagCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var recommendedTagLabel: UILabel!
    @IBOutlet weak var tagLabelMaxConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
//        self.recommendedTagLabel.textColor = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1)
//        self.layer.cornerRadius = 4
        self.tagLabelMaxConstraint.constant = UIScreen.main.bounds.width - 8 * 2 - 8 * 2
    }

}
