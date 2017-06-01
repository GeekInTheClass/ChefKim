//
//  TagCollectionViewCell.swift
//  Recipick
//
//  Created by SangU on 2017. 5. 26..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import UIKit

class TagCollectionViewCell:UICollectionViewCell {
    
    @IBOutlet weak var buttonLike: UIButton!
    
    @IBOutlet weak var tagImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func changeButton() {
        let buttonImage = UIImage(named: "ui_unlike")
        if buttonLike.currentImage == buttonImage {
            buttonLike.setImage(UIImage(named:"ui_like"), for: .normal)
        }
        else {
            buttonLike.setImage(UIImage(named:"ui_unlike"), for: .normal)
        }
    }
    
    
    var tagForCell:Type? { didSet{
        setUpCell()
        }}
    
    func setUpCell() {
        guard let type = tagForCell else {
            return
        }
        
        tagImageView.image = UIImage(named: type.thumbnail)
        nameLabel.text = type.name
    }
}
