//
//  MainViewController.swift
//  Recipick
//
//  Created by ParkDongHyuck on 2017. 5. 25..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var navigationLogo: UIImageView!
    
    @IBOutlet weak var recommendedTitleRecipe: UIImageView!
    
    
    var temporaryTags = ["달걀","우유","치즈","파티음식","10분컷자취요리"]
    var currentElement = 0

    @IBOutlet weak var recommendedTagButton: UIRoundPrimaryButton!
    
    @IBAction func showRecommendedTagButton(_ sender: Any) {
        if currentElement < temporaryTags.count {
            recommendedTagButton.setTitle(temporaryTags[currentElement], for: UIControlState.normal)
            currentElement += 1
        } else {
            print("No more elements to display.")
        }
    }
    
    
    let reuseIdentifier = "cell"
    var temporaryCollectionItems = ["김치찌개", "칼국수", "미역국", "치킨", "파스타", "피자", "탕수육", "냉면", "김치전", "막걸리", "소주", "맥주", "밥", "된장찌개", "제육볶음"]
    
    @IBOutlet weak var recommendedSubRecipe: UICollectionView!

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.temporaryCollectionItems.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! RecommendedCollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.RecommendedCellLabel.text = self.temporaryCollectionItems[indexPath.item]
        cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
        
        return cell
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
