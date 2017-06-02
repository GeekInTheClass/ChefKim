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
    
    @IBOutlet weak var recipe_ingrediant: UILabel!
    
    @IBOutlet weak var recipe_content: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        var ingrediants:String!
        var contents:String!
        
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
        guard let collection = recipe.photo  else {
            return 0
        }
        return collection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecipeCell", for: indexPath) as! RecipeCollectionViewCell
        let photo:String = Array(recipe.photo!)[indexPath.row]
        let thumbnail:UIImage = UIImage(named: photo)!
        
        cell.recipeImage = thumbnail
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
