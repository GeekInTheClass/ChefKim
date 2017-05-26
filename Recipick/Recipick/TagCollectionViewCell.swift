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
