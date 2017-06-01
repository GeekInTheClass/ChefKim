//
//  RecipeCollectionViewCell.swift
//  Recipick
//
//  Created by SangU on 2017. 5. 31..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import UIKit

class RecipeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var recipeImage: UIImage!
    
    var recipeForCell:String? { didSet{
        setUpCell()
        }}
    
    func setUpCell() {
        guard let thumbnail = recipeForCell else {
            return
        }
        
        recipeImage = UIImage(named:thumbnail)
    }
    
    
    
}
