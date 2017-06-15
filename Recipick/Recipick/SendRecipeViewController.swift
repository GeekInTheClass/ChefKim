//
//  SendRecipeViewController.swift
//  Recipick
//
//  Created by ParkDongHyuck on 2017. 6. 3..
//  Copyright © 2017년 ChefKim. All rights reserved.
//
import UIKit
import Firebase
import SCLAlertView

class SendRecipeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var ref:DatabaseReference!
    var refHandle:DatabaseHandle!
 
    
    //  Collections used for tags : Ingredient/Time/Situation/Type
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var ingredientTagCollection: UICollectionView!
    
    @IBOutlet weak var timeTagCollection: UICollectionView!
    
    @IBOutlet weak var situationTagCollection: UICollectionView!
    
    @IBOutlet weak var typeTagCollection: UICollectionView!
    
    @IBOutlet weak var photoCollection: UICollectionView!

    @IBOutlet weak var detailIngredientField: UITextView!
    
    @IBOutlet weak var detailRecipeField: UITextView!
    
    @IBAction func AddPhotoAction(_ sender: UIButton) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    let imagePicker = UIImagePickerController()
    
    // Sample data arrays for tags
    let ingre_cellIdentifier = "recipeTag"
    var temp_ingredients:[String] = ["+"]
    

    let time_cellIdentifier = "recipeTag"
    var temp_time:String = "10분 내외"
    
    let situ_cellIdentifier = "recipeTag"
    var temp_situation:String = "아플 때"
    
    let type_cellIdentifier = "recipeTag"
    var temp_type:String = "한식"
    
    let photo_cellIdentifier = "photoListCell"
    var photoArray:[UIImage] = [#imageLiteral(resourceName: "temp_1"), #imageLiteral(resourceName: "temp_2"), #imageLiteral(resourceName: "temp_3")]
    
    var sizingCell: RecommendedTagCollectionViewCell?
    
    
    //Firebase 로 데이터 업로드
     
    @IBAction func upLoadFb(_ sender: Any) {
        print("fddd")
        let code = madeCode(length : 3)
        
        let upId = ["id" : code.0]
        ref.child("Recipe/\(code.1)").updateChildValues(upId)
        let upName = ["name" : nameField.text!]
        ref.child("Recipe/\(code.1)").updateChildValues(upName)
        let upIngredient = ["ingredients" : upIngreData(inputData: temp_ingredients)]
        ref.child("Recipe/\(code.1)").updateChildValues(upIngredient)
        let upTime = ["time" : upTimeData(inputData : temp_time)]
        ref.child("Recipe/\(code.1)").updateChildValues(upTime)
        let upSituation = ["situation" : upSituationData(inputData: temp_situation)]
        ref.child("Recipe/\(code.1)").updateChildValues(upSituation)
        let upType = ["type" : upTypeData(inputData : temp_type)]
        ref.child("Recipe/\(code.1)").updateChildValues(upType)
        let upDetailIngredient = ["upDetailIngredient" : detailIngredientField.text!]
        ref.child("Recipe/\(code.1)").updateChildValues(upDetailIngredient)
        let upDetailRecipe = ["upDetailRecipe" : detailRecipeField.text!]
        ref.child("Recipe/\(code.1)").updateChildValues(upDetailRecipe)
        let upPhotoURL = ["upPhotoURL" : ["https://firebasestorage.googleapis.com/v0/b/shefkim-d0b57.appspot.com/o/Recipe392%2Fcham_dice.jpg?alt=media&token=7de47077-9058-4821-9224-7a6a3d39e944"]]
    }
    
    // firebase 분류코드 생성
    func madeCode(length: Int) -> (String, String){
        
        let letters : NSString = "012356789"
        let len = UInt32(letters.length)
        
        var Code = ""
        for _ in 0 ..< length {
            let rand = arc4random_uniform(len)
            var nextChar = letters.character(at: Int(rand))
            Code += NSString(characters: &nextChar, length: 1) as String
        }
        
        return (Code, "Recipe" + Code)
    }
    
    
    
    // Tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.ingredientTagCollection {
            return self.temp_ingredients.count
        }
            
        else if collectionView == self.timeTagCollection {
            return 1
        }
            
        else if collectionView == self.situationTagCollection {
            return 1
        }
            
        else if collectionView == self.typeTagCollection {
            return 1
        }
        
        else {
            return self.photoArray.count + 1
        }
    }
    
    // Make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // 각 collection에 따라 태그 출력
        if collectionView == self.ingredientTagCollection {
            let ingredientTag = collectionView.dequeueReusableCell(withReuseIdentifier: ingre_cellIdentifier, for: indexPath as IndexPath) as! RecommendedTagCollectionViewCell
            self.configureCell(cell: ingredientTag, forIndexPath: indexPath, type: self.temp_ingredients)
            print(temp_ingredients)
            
            // index가 마지막 셀(+)을 가리킬 때 : 태그 추가 버튼
            if indexPath.row == temp_ingredients.count - 1 {
                print(temp_ingredients) // 배열에 태그가 들어갔는지 확인 (지울것)

//                ingredientTag.layer.borderColor = UIColor(red: 242/255, green: 101/255, blue: 34/255, alpha: 1.0).cgColor
//                ingredientTag.layer.borderWidth = 1
//                ingredientTag.backgroundColor = UIColor.white
                ingredientTag.recommendedTagLabel.text = "+"
//                ingredientTag.recommendedTagLabel.textColor = UIColor(red: 242/255, green: 101/255, blue: 34/255, alpha: 1.0)
                ingredientTag.layer.borderColor = UIColor.clear.cgColor
                ingredientTag.layer.borderWidth = 0
                ingredientTag.backgroundColor = UIColor(red: 242/255, green: 101/255, blue: 34/255, alpha: 1.0)
            }
             
            // index가 그 외의 셀을 가리킬 때 : 태그 입력
            else {
                ingredientTag.layer.borderColor = UIColor.clear.cgColor
                ingredientTag.layer.borderWidth = 0
                ingredientTag.backgroundColor = UIColor(red: 131/255, green: 147/255, blue: 202/255, alpha: 1.0)
            }

            // 태그 셀의 가장자리를 둥글게 설정
            ingredientTag.layer.cornerRadius = 13.5
            
            return ingredientTag
        }
            
        else if collectionView == self.timeTagCollection {
            let timeTag = collectionView.dequeueReusableCell(withReuseIdentifier: time_cellIdentifier, for: indexPath as IndexPath) as! RecommendedTagCollectionViewCell
            self.configureCell(cell: timeTag, forIndexPath: indexPath, type: [self.temp_time])
            
            timeTag.layer.borderColor = UIColor.clear.cgColor
            timeTag.layer.borderWidth = 0
            timeTag.backgroundColor = UIColor(red: 131/255, green: 147/255, blue: 202/255, alpha: 1.0)
            
            timeTag.layer.cornerRadius = 13.5
            
            return timeTag
        }
            
        else if collectionView == self.typeTagCollection {
            let typeTag = collectionView.dequeueReusableCell(withReuseIdentifier: type_cellIdentifier, for: indexPath as IndexPath) as! RecommendedTagCollectionViewCell
            self.configureCell(cell: typeTag, forIndexPath: indexPath, type: [self.temp_type])
            
            typeTag.layer.borderColor = UIColor.clear.cgColor
            typeTag.layer.borderWidth = 0
            typeTag.backgroundColor = UIColor(red: 131/255, green: 147/255, blue: 202/255, alpha: 1.0)
            
            typeTag.layer.cornerRadius = 13.5
            
            return typeTag
        }
        
        else if collectionView == self.situationTagCollection {
            let situationTag = collectionView.dequeueReusableCell(withReuseIdentifier: situ_cellIdentifier, for: indexPath as IndexPath) as! RecommendedTagCollectionViewCell
            self.configureCell(cell: situationTag, forIndexPath: indexPath, type: [self.temp_situation])
            
            situationTag.layer.borderColor = UIColor.clear.cgColor
            situationTag.layer.borderWidth = 0
            situationTag.backgroundColor = UIColor(red: 131/255, green: 147/255, blue: 202/255, alpha: 1.0)
            
            situationTag.layer.cornerRadius = 13.5
            
            return situationTag
        }
        
        // 네 가지 태그에 모두 해당이 되지 않을 경우 : 사진 첨부 Collection
        else {
            let photoCell = collectionView.dequeueReusableCell(withReuseIdentifier: photo_cellIdentifier, for: indexPath as IndexPath) as! PhotoCell
            
            // 마지막 사진 추가(+) 셀
            if indexPath.row == photoArray.count {
                // 이미지 파일이 보이지 않도록 설정
                photoCell.photoCellImage.image = nil
                // 임시로 보라색으로 칠함 - <TODO>사진추가 이미지 삽입
                photoCell.backgroundColor = UIColor.purple
            }
            
            else {
                // 이미지 셀
                photoCell.photoCellImage.image = photoArray[indexPath.row]
                photoCell.addPhotoButton.isHidden = true
            }
            
            return photoCell
        }
    }
    
    func configureCell(cell: RecommendedTagCollectionViewCell, forIndexPath indexPath: IndexPath, type: [String]) {
        let tag = type[indexPath.row]
        if cell.recommendedTagLabel != nil {
            cell.recommendedTagLabel.text = "# " + tag
        }
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.ingredientTagCollection {
            self.configureCell(cell: self.sizingCell!, forIndexPath: indexPath as IndexPath, type: temp_ingredients)
            
            return self.sizingCell!.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
        }
        
        else if collectionView == self.timeTagCollection {
            self.configureCell(cell: self.sizingCell!, forIndexPath: indexPath as IndexPath, type: [temp_time])
            
            return self.sizingCell!.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
        }
            
        else if collectionView == self.situationTagCollection {
            self.configureCell(cell: self.sizingCell!, forIndexPath: indexPath as IndexPath, type: [temp_situation])
            
            return self.sizingCell!.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
        }
            
        else if collectionView == self.typeTagCollection {
            self.configureCell(cell: self.sizingCell!, forIndexPath: indexPath as IndexPath, type: [temp_type])
            
            return self.sizingCell!.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
        }
        
        else {
            return CGSize(width: 100, height: 100)
        }
    }
    
    // 각 Collection의 마지막 셀을 눌렀을 때 구현 (태그 또는 사진 추가)
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.ingredientTagCollection {
            if indexPath.item == temp_ingredients.count - 1 {
                let appearance = SCLAlertView.SCLAppearance(
                    showCloseButton: false
                )
                let alertView = SCLAlertView(appearance: appearance)
                let ingredients:[String] = ["치즈", "요거트", "우유", "생크림", "생선", "어묵", "조개", "오징어", "쌈채소", "호박", "감자", "고구마", "쇠고기", "돼지고기", "닭고기", "달걀", "김치", "밥", "과일"]
                for index in ingredients {
                    for tags in self.temp_ingredients {
                        // 이미 선택한 태그일 때
                        if tags == index {
                            alertView.addButton(index, backgroundColor: UIColor.red, textColor: UIColor.white) {
                                // 해당 태그 제거
                                if let tempIndex = self.temp_ingredients.index(of:tags) {
                                    self.temp_ingredients.remove(at: tempIndex)
                                }
                                collectionView.reloadData()
                                self.view.setNeedsDisplay()
                            }
                        }
                        // 새로 선택한 태그일 때
                        else {
                            alertView.addButton(index) {
                                self.temp_ingredients.insert(index, at: self.temp_ingredients.count - 1)
                                collectionView.reloadData()
                                self.view.setNeedsDisplay()
                            }
                        }
                    }
                }
                alertView.showSuccess("주재료 선택", subTitle: "요리의 주요 재료들을 추가해주세요")
            }
        }
        
        else if collectionView == self.timeTagCollection {
            let appearance = SCLAlertView.SCLAppearance(
                showCloseButton: false
            )
            let alertView = SCLAlertView(appearance: appearance)
            let times:[String] = ["10분 내외", "30분 내외", "1시간", "2시간", "3시간 이상", "1일 이상"]
            for index in times {
                alertView.addButton(index) {
                    self.temp_time = index
                    collectionView.reloadData()
                    self.view.setNeedsDisplay()
                }
            }
            alertView.showSuccess("조리시간 선택", subTitle: "예상 시간을 선택해주세요")
        }
        
        else if collectionView == self.situationTagCollection {
            let appearance = SCLAlertView.SCLAppearance(
                showCloseButton: false
            )
            let alertView = SCLAlertView(appearance: appearance)
            let situations:[String] = ["홈파티 준비", "근사한 저녁", "다이어트", "더운 여름", "간편한 아침", "아플 때"]
            for index in situations {
                alertView.addButton(index) {
                    self.temp_situation = index
                    collectionView.reloadData()
                    self.view.setNeedsDisplay()
                }
            }
            alertView.showSuccess("요리 상황 선택", subTitle: "어울리는 상황을 선택해주세요")
        }
        
        else if collectionView == self.typeTagCollection {
            let appearance = SCLAlertView.SCLAppearance(
                showCloseButton: false
            )
            let alertView = SCLAlertView(appearance: appearance)
            let types:[String] = ["한식", "중식", "일식", "양식", "세계음식", "디저트"]
            for index in types {
                alertView.addButton(index) {
                    self.temp_type = index
                    collectionView.reloadData()
                    self.view.setNeedsDisplay()
                }
            }
            alertView.showSuccess("음식 종류 선택", subTitle: "음식의 종류를 선택해주세요")
        }
        
        // 사진 Collection
//        else if collectionView == self.photoCollection {
//            if indexPath.item == photoArray.count {
//                /*  TODO :  마지막 태그(+버튼) 클릭시 갤러리 모달로 띄우고 이미지 선택,
//                            선택 완료하면 모달 닫기
//                            현재는 임시 이미지를 배열에 추가하도록 되어 있음 */
//                photoArray += ["temp_newImage"]
//            }
//            
//            else {
//                return
//            }
//        }
        
        else {
            return
        }
        
        // 추가된 데이터를 화면에 반영하기 위해 view를 다시 로드함
        collectionView.reloadData()
        self.view.setNeedsDisplay()
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            photoArray.append(pickedImage)
            print(photoArray)
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        
        // Set collectionView Cells for each tag collection
        let cellNib = UINib(nibName: "RecommendedTagCollectionViewCell", bundle: nil)
        
        self.ingredientTagCollection.register(cellNib, forCellWithReuseIdentifier: "recipeTag")
        self.ingredientTagCollection.backgroundColor = UIColor.clear
        
        self.timeTagCollection.register(cellNib, forCellWithReuseIdentifier: "recipeTag")
        self.ingredientTagCollection.backgroundColor = UIColor.clear
        
        self.situationTagCollection.register(cellNib, forCellWithReuseIdentifier: "recipeTag")
        self.situationTagCollection.backgroundColor = UIColor.clear
        
        self.typeTagCollection.register(cellNib, forCellWithReuseIdentifier: "recipeTag")
        self.typeTagCollection.backgroundColor = UIColor.clear
        
        self.sizingCell = (cellNib.instantiate(withOwner: nil, options: nil) as NSArray).firstObject as! RecommendedTagCollectionViewCell?
        
        // ImagePicker for photo collection

        self.imagePicker.delegate = self
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

class PhotoCell: UICollectionViewCell {
    @IBOutlet weak var photoCellImage: UIImageView!
    @IBOutlet weak var addPhotoButton: UIButton!
}
