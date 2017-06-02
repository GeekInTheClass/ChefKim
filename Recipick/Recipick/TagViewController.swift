//
//  TagViewController.swift
//  Recipick
//
//  Created by SangU on 2017. 5. 26..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import UIKit

class TagViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var tagList:[Recipe] = []
    var tagTitle:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = tagTitle
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return tagList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TagCell", for: indexPath) as! TagCollectionViewCell
        
        // Configure the cell
        
        let tag = tagList[indexPath.row]
        let thumbnail:UIImage?
        
        if let photo = tag.photo {
            thumbnail = UIImage(named: photo[0])!
        } else {
            thumbnail = UIImage(named: "default")!
        }
        
        for recipe in likeList {
            if recipe.id == tag.id {
                cell.buttonLike.setImage(UIImage(named:"ui_like"), for: .normal)
            }
        }
        
        
        cell.nameLabel.text = tag.name
        cell.tagImageView.image = thumbnail
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TagToRecipe" {
            if let toRecipe = segue.destination as? RecipeViewController {
                toRecipe.recipe = tagList[0]
            }
        }
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
