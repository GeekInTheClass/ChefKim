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
    
    //@IBOutlet weak var timeLabel:UILabel
    
    //@IBOutlet weak var situationLabel:UILabel
    
    //@IBOutlet weak var typeLabel:UILabel
    
    //@IBOutlet weak var recipe_ingrediantLabel:[UILabel]
    
    //@IBOutlet weak var recipe_contentsLabel:[UILabel]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
