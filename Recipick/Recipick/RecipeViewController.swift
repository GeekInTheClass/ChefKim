//
//  RecipeViewController.swift
//  Recipick
//
//  Created by SangU on 2017. 5. 31..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var recipe:Recipe = Recipe(id: "000", name: "뚝배기", ingrediant: [Recipe.Ingrediant.Beef], time: Recipe.Time.H1, situation: Recipe.Situation.Birth, category: Recipe.Category.Dessert, recipe_ingrediant: "섞어", recipe_contents: "걍 먹어")
    
    var tagList:[Recipe] = []
    
    @IBOutlet weak var ingredientTagCollection: UICollectionView!
    
    @IBOutlet weak var photoCollection: UICollectionView!
    
    @IBOutlet weak var timeTag: UIButton!
    
    @IBOutlet weak var situationTag: UIButton!
    
    @IBOutlet weak var typeTag: UIButton!
    
    @IBOutlet weak var recipe_ingrediant: UILabel!
    
    @IBOutlet weak var recipe_content: UILabel!
    
    override func viewDidLoad() {
        self.title = recipe.name
        
        timeTag.setTitle(recipe.time.toString(), for: .normal)
        situationTag.setTitle(recipe.situation.toString(), for: .normal)
        typeTag.setTitle(recipe.category.toString(), for: .normal)
        recipe_ingrediant.text = recipe.recipe_ingrediant
        recipe_content.text = recipe.recipe_contents
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        if collectionView == self.ingredientTagCollection {
            return self.recipe.ingrediant.count
        }
            
        else {
            guard let collection = self.recipe.photo  else {
                return 0
            }
            return collection.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.ingredientTagCollection {
            print("ingredi")
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ingrediantCell", for: indexPath as IndexPath) as! MainIngredientTagCell
            
            
            cell.layer.borderColor = UIColor.clear.cgColor
            cell.layer.borderWidth = 0
            cell.backgroundColor = UIColor(red: 131/255, green: 147/255, blue: 202/255, alpha: 1.0)
            cell.ingredientLabel.text = self.recipe.ingrediant[indexPath.item].toString()
            cell.ingredientLabel.textColor = UIColor.white
            
            return cell
        } else {
            print("recipe")
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recipePhotoCell", for: indexPath) as! RecipeCollectionViewCell
            let thumbnail:UIImage = recipe.urlToPhoto(index: indexPath.row)
            
            cell.recipeImage.image = thumbnail
            
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == ingredientTagCollection {
            let selectedIngrediant = recipe.ingrediant[indexPath.row]
            for recipe in recipeList {
                for ingrediant in recipe.ingrediant {
                    if ingrediant == selectedIngrediant {
                        tagList.append(recipe)
                    }
                }
            }
        }
        
        performSegue(withIdentifier: "recipeToTag", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "recipeToTag" {
            if let destination = segue.destination as? TagViewController {
                destination.tagList = self.tagList
                print("send to tag")
            }
        }
    }
    
}


class MainIngredientTagCell: UICollectionViewCell {
    @IBOutlet weak var ingredientLabel: UILabel!
}
