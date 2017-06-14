//
//  MainViewController.swift
//  Recipick
//
//  Created by ParkDongHyuck on 2017. 5. 25..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import UIKit
import Firebase

var likeList:[Recipe] = []


class MainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    var ref : DatabaseReference!
    
    // 상단 추천레시피 태그를 위한 임시 데이터셋
    let tagIdentifier = "recipeTag"
    var temporaryTags = ["달걀","우유우유","치즈","파티음식","10분컷자취요리","임시태그","태그","태그태그태그","밥","ㅇㅁㄹㅇㅁㄹ"]
    
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
//            recipeTag.recommendedTagLabel.text = "#" + self.temporaryTags[indexPath.item]
            recipeTag.layer.cornerRadius = 13.5
            
            return recipeTag
        }
            
        else {
            let recipeCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath as IndexPath) as! RecommendedCollectionViewCell
            
            recipeCell.RecommendedCellLabel.text = self.temporaryCollectionItems[indexPath.item]
            recipeCell.RecommendedCellImage.image = UIImage(named: "default")
            return recipeCell
        }
    }
    
    func configureCell(cell: RecommendedTagCollectionViewCell, forIndexPath indexPath: IndexPath) {
        let tag = temporaryTags[indexPath.row]
        cell.recommendedTagLabel.text = "# " + tag
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.recommendedTag {
            self.configureCell(cell: self.sizingCell!, forIndexPath: indexPath as IndexPath)
            
            return self.sizingCell!.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
        }
        
        else {
            return CGSize(width: view.frame.size.width/3 - 17, height: view.frame.size.width/3)
            
            // To get 1 column
            //return CGSize(width: view.frame.size.width, height: view.frame.size.width)
            
            // To get 2 column
            //return CGSize(width: view.frame.size.width/2, height: view.frame.size.width/2)
        }
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//Firebase에서 데이터 가져오기
        ref = Database.database().reference()
        
        ref.child("Recipe").observe(.childAdded, with: { (snapshot) in
            let data = snapshot.value as! [String: AnyObject]
            
            var recipe = Recipe(id: " ", name: " ", ingrediant: [Recipe.Ingrediant.Beef], time: Recipe.Time.Day, situation: Recipe.Situation.Birth, category: Recipe.Category.Japanese, recipe_ingrediant: " ", recipe_contents: " ", photo: [" "])
            let recieveId = data["id"]
            let recieveName = data["name"]
            let recieveIngre = data["ingredients"]
            let recieveSituation = data["situation"]
            let recieveTime = data["time"]
            let recieveType = data["type"]
            let recieveDetailIngre = data["upDetailIngredient"]
            let recieveDetailRecipe = data["upDetailRecipe"]
            let recievePhoto = data["upPhotoURL"]
            
            let convId = recieveId as! String
            let convName = recieveName as! String
            let convIngre = convertIngre(inputData: recieveIngre as! NSArray)
            let convTime = convertTime(inputData: recieveTime as! NSArray)
            let convSitu = convertSitu(inputData: recieveSituation as! NSArray)
            let convCate = convertCategory(inputData: recieveType as! NSArray)
            let convDetailIngre = recieveDetailIngre as! String
            let convDetailRecipe = recieveDetailRecipe as! String
            let convPhotoURL = convertPhotoURL(inputData: recievePhoto as! NSArray)
            
            recipe = Recipe(id: convId,
                            name: convName,
                            ingrediant: convIngre,
                            time: convTime,
                            situation: convSitu,
                            category: convCate,
                            recipe_ingrediant: convDetailIngre,
                            recipe_contents: convDetailRecipe,
                            photo: convPhotoURL)
            
            g_RecipeData[snapshot.key] = recipe
            g_RecipeArray = Array(g_RecipeData.values)
            
            print(g_RecipeArray)
            
        })

        // Do any additional setup after loading the view.
        
        navigationLogo.image = UIImage(named: "logo")
        
        let cellNib = UINib(nibName: "RecommendedTagCollectionViewCell", bundle: nil)
        self.recommendedTag.register(cellNib, forCellWithReuseIdentifier: "recipeTag")
        self.recommendedTag.backgroundColor = UIColor.clear
    
        self.sizingCell = (cellNib.instantiate(withOwner: nil, options: nil) as NSArray).firstObject as! RecommendedTagCollectionViewCell?
        
        self.recommendedTag.collectionViewLayout = UICollectionViewFlowLayout()
        
//        self.recommendedTag.frame = self.view.frame
//        self.view.addSubview(self.recommendedTag!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
/*    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
       if segue.identifier == "MainToTag" {
            if let toTag = segue.destination as? TagViewController {
                var tagList:[Recipe]
                tagList = recipeList.filter { $0.situation ==  a}
                toTag.tagList = tagList
                toTag.tagTitle = a.toString()
            }
       } else if segue.identifier == "TagToRecipe" {
        if let toRecipe = segue.destination as? RecipeViewController {
            toRecipe.recipe = chosenRecipe
        }
        
        }
         
    }
 */
    
//    private let minItemSpacing: CGFloat = 8
//    private let itemWidth: CGFloat      = 100
//    private let headerHeight: CGFloat   = 32
//    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        
//        // Create our custom flow layout that evenly space out the items, and have them in the center
//        let layout = UICollectionViewFlowLayout()
//        layout.itemSize = CGSize(width: itemWidth, height: itemWidth)
//        layout.minimumInteritemSpacing = minItemSpacing
//        layout.minimumLineSpacing = minItemSpacing
//        layout.headerReferenceSize = CGSize(width: 0, height: headerHeight)
//        
//        // Find n, where n is the number of item that can fit into the collection view
//        var n: CGFloat = 1
//        let containerWidth = recommendedTag.bounds.width
//        while true {
//            let nextN = n + 1
//            let totalWidth = (nextN * itemWidth) + ((nextN - 1) * minItemSpacing)
//            
//            if totalWidth > containerWidth {
//                break
//            } else {
//                n = nextN
//            }
//        }
//        
//        // Calculate the section inset for left and right.
//        // Setting this section inset will manipulate the items such that they will all be aligned horizontally center.
//        let inset = max(minItemSpacing, floor((containerWidth - (n * itemWidth) - (n - 1) * minItemSpacing) / 2 ))
//        layout.sectionInset = UIEdgeInsets(top: minItemSpacing, left: inset, bottom: minItemSpacing, right: inset)
//        
//        recommendedTag.collectionViewLayout = layout
//    }
//    
}
