//
//  TypeViewController.swift
//  Recipick
//
//  Created by SangU on 2017. 5. 26..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import UIKit

typealias Type = (thumbnail:String, name:String, type:Recipe.Category)

class TypeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var types:[Type] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        types += [Type(thumbnail:"icon_type_korean", name:"한식", type:Recipe.Category.Korean), Type(thumbnail:"icon_type_chinese", name:"중식", type:Recipe.Category.Chinese), Type(thumbnail:"icon_type_japanese", name:"일식", type:Recipe.Category.Japanese), Type(thumbnail:"icon_type_western", name:"양식", type:Recipe.Category.Western), Type(thumbnail:"icon_type_global", name:"세계음식", type:Recipe.Category.Global), Type(thumbnail:"icon_type_dessert", name:"디저트", type:Recipe.Category.Dessert)]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return types.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TypeCell", for: indexPath) as! TypeCollectionViewCell
        
        let type = Array(types)[indexPath.row]
        let thumbnail:UIImage = UIImage(named: type.thumbnail)!
        
        
        cell.type = type.type
        cell.nameLabel.text = type.name
        cell.typeImageView.image = thumbnail
        
        return cell
    }
    
    var selectedType:Recipe.Category!
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedType = types[indexPath.row].type
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TypeToTag" {
            if let toTag = segue.destination as? TagViewController {
                var tagList:[Recipe]
                
                tagList = recipeList.filter { $0.category == selectedType }
                
                toTag.tagList = tagList
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
