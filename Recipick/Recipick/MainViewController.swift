//
//  MainViewController.swift
//  Recipick
//
//  Created by ParkDongHyuck on 2017. 5. 25..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import UIKit

var likeList:[Recipe] = []

class MainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

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
/*
        다음 스토리보드의 첫 화면이 NavigationController이면 안된다고 함 -> 이 부분 질문드릴것
         
        let storyboard =  UIStoryboard(name: "Mypage", bundle: nil)
        let vc = storyboard.instantiateInitialViewController() as UIViewController!
        navigationController?.pushViewController(vc!, animated: true)
*/

    }
    

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
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        navigationLogo.image = UIImage(named: "logo")
        
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
