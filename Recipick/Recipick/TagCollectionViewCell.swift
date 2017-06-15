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
    
    var recipe:Recipe!
    
    @IBAction func changeButton() {
        print("buttonclick")
        if buttonLike.currentImage == UIImage(named: "ui_unlike") {
            print("Hey")
            buttonLike.setImage(UIImage(named:"ui_like"), for: .normal)
            likeList.append(recipe)
            print(recipe)
        }
        else {
            print("not")
            buttonLike.setImage(UIImage(named:"ui_unlike"), for: .normal)
            recipeList = recipeList.filter() { $0 !== recipe }
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
