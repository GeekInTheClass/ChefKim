//
//  RecipeViewController.swift
//  Recipick
//
//  Created by SangU on 2017. 5. 31..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var recipe:Recipe!
    
    var tagList:[Recipe] = []
    
    @IBOutlet weak var ingredientTagCollection: UICollectionView!
    
    @IBOutlet weak var photoCollection: UICollectionView!
    
    @IBOutlet weak var timeTag: UIButton!
    
    @IBAction func timeTagClicked (_sender: Any) {
        for recipe in recipeList {
            if recipe.time.toString() == timeTag.currentTitle {
                tagList.append(recipe)
            }
        }
        performSegue(withIdentifier: "recipeToTag", sender: self)
    }
    
    @IBOutlet weak var situationTag: UIButton!
    
    @IBAction func situationTagClicked (_sender: Any) {
        for recipe in recipeList {
            if recipe.situation.toString() == situationTag.currentTitle {
                tagList.append(recipe)
            }
        }
        performSegue(withIdentifier: "recipeToTag", sender: self)
    }
    
    @IBOutlet weak var typeTag: UIButton!
    
    @IBAction func typeTagClicked (_sender: Any) {
        for recipe in recipeList {
            if recipe.category.toString() == typeTag.currentTitle {
                tagList.append(recipe)
            }
        }
        performSegue(withIdentifier: "recipeToTag", sender: self)
    }
    
    @IBOutlet weak var recipe_ingrediant: UILabel!
    
    @IBOutlet weak var recipe_content: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = recipe.name
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        var ingrediants:String!
        var contents:String!
        
        timeTag.setTitle(recipe.time.toString(), for: .normal)
        situationTag.setTitle(recipe.situation.toString(), for: .normal)
        typeTag.setTitle(recipe.situation.toString(), for: .normal)
        
        for ingrediant in recipe.recipe_ingrediant {
            ingrediants.append(ingrediant)
            ingrediants.append("\n")
        }
        
        recipe_ingrediant.text = ingrediants
        
        for content in recipe.recipe_contents {
            contents.append(content)
            contents.append("\n")
        }
        
        recipe_content.text = contents
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
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ingredientCell", for: indexPath as IndexPath) as! MainIngredientTagCell
            
            
            cell.layer.borderColor = UIColor.clear.cgColor
            cell.layer.borderWidth = 0
            cell.backgroundColor = UIColor(red: 131/255, green: 147/255, blue: 202/255, alpha: 1.0)
            cell.ingredientLabel.text = self.recipe.ingrediant[indexPath.item].toString()
            cell.ingredientLabel.textColor = UIColor.white
            
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecipeCell", for: indexPath) as! RecipeCollectionViewCell
            let photo:String = Array(recipe.photo!)[indexPath.row]
            let thumbnail:UIImage = UIImage(named: photo)!
        
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    */

}


class MainIngredientTagCell: UICollectionViewCell {
    @IBOutlet weak var ingredientLabel: UILabel!
}
