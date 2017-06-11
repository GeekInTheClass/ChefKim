//
//  MainViewController.swift
//  Recipick
//
//  Created by ParkDongHyuck on 2017. 5. 25..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import UIKit

var likeList:[Recipe] = []

class MainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    // 상단 추천레시피 태그를 위한 임시 데이터셋
    let tagIdentifier = "recipeTag"
    var temporaryTags = ["달걀","우유","치즈","파티음식","10분컷자취요리","임시태그","태그","태그태그태그","밥"]
    
    // 하단 추천레시피 셀을 위한 임시 데이터셋
    let cellIdentifier = "recipeCell"
    var temporaryCollectionItems = ["김치찌개", "칼국수", "미역국", "치킨", "파스타", "피자", "탕수육", "냉면", "김치전"]
    
    @IBOutlet weak var recommendedTag: UICollectionView!
    
    @IBOutlet weak var navigationLogo: UIImageView!
    
    @IBOutlet weak var recommendedTitleRecipe: UIImageView!

    @IBOutlet weak var recommendedSubRecipe: UICollectionView!
    
    @IBAction func moveToMypage(_ sender: Any) {
        self.performSegue(withIdentifier: "segueMypage", sender: self)
    }
    
    var sizingCell: RecommendedTagCollectionViewCell?

    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.recommendedTag {
            return self.temporaryTags.count
        }
        
        else {
            return self.temporaryCollectionItems.count
        }
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.recommendedTag {
            // get a reference to our storyboard cell
            let recipeTag = collectionView.dequeueReusableCell(withReuseIdentifier: tagIdentifier, for: indexPath as IndexPath) as! RecommendedTagCollectionViewCell
            self.configureCell(cell: recipeTag, forIndexPath: indexPath)
            
            // Use the outlet in our custom class to get a reference to the UILabel in the cell
            recipeTag.recommendedTagLabel.text = self.temporaryTags[indexPath.item]
            recipeTag.layer.cornerRadius = 13.5
            
            return recipeTag
        }
            
        else {
            let recipeCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath as IndexPath) as! RecommendedCollectionViewCell
            
            recipeCell.RecommendedCellLabel.text = self.temporaryCollectionItems[indexPath.item]
            
            return recipeCell
        }
    }
    
    func configureCell(cell: RecommendedTagCollectionViewCell, forIndexPath indexPath: IndexPath) {
        let tag = temporaryTags[indexPath.row]
        cell.recommendedTagLabel.text = tag
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.recommendedTag {
            self.configureCell(cell: self.sizingCell!, forIndexPath: indexPath as IndexPath)
            
            return self.sizingCell!.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
        }
        
        else {
            return CGSize(width: view.frame.size.width/3 - 20, height: view.frame.size.width/3)
            
            // To get 1 column
            //return CGSize(width: view.frame.size.width, height: view.frame.size.width)
            
            // To get 2 column
            //return CGSize(width: view.frame.size.width/2, height: view.frame.size.width/2)
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        navigationLogo.image = UIImage(named: "logo")
        
        let cellNib = UINib(nibName: "RecommendedTagCollectionViewCell", bundle: nil)
        self.recommendedTag.register(cellNib, forCellWithReuseIdentifier: "recipeTag")
        self.recommendedTag.backgroundColor = UIColor.clear
    
        self.sizingCell = (cellNib.instantiate(withOwner: nil, options: nil) as NSArray).firstObject as! RecommendedTagCollectionViewCell?
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
