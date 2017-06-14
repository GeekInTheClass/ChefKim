//
//  SendRecipeViewController.swift
//  Recipick
//
//  Created by ParkDongHyuck on 2017. 6. 3..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import UIKit

class SendRecipeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    /*
    var ref:DatabaseReference!
    var refHandle:DatabaseHandle!
     */
    
    //  Collections used for tags : Ingredient/Time/Situation/Type
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var ingredientTagCollection: UICollectionView!
    
    @IBOutlet weak var timeTagCollection: UICollectionView!
    
    @IBOutlet weak var situationTagCollection: UICollectionView!
    
    @IBOutlet weak var typeTagCollection: UICollectionView!
    
    @IBOutlet weak var photoCollection: UICollectionView!

    @IBOutlet weak var detailIngredientField: UITextView!
    
    @IBOutlet weak var detailRecipeField: UITextView!
    
    // Sample data arrays for tags
    let ingre_cellIdentifier = "ingredientCell"
    var temp_ingredients:[String] = ["김치", "계란"]
    
    let time_cellIdentifier = "timeCell"
    var temp_time:[String] = []
    
    let situ_cellIdentifier = "situationCell"
    var temp_situation:[String] = []
    
    let type_cellIdentifier = "typeCell"
    var temp_type:[String] = []
    
    let photo_cellIdentifier = "photoListCell"
    var temp_photo:[String] = ["temp_1", "temp_2", "temp_3"]
    /* Firebase 로 데이터 업로드
     
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
        let upPhotoURL = ["upPhotoURL" : temp_photo]
        ref.child("Recipe/\(code.1)").updateChildValues(upPhotoURL)
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
    */
    
    
    // Tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.ingredientTagCollection {
            return self.temp_ingredients.count + 1
        }
            
        else if collectionView == self.timeTagCollection {
            return self.temp_time.count + 1
        }
            
        else if collectionView == self.situationTagCollection {
            return self.temp_situation.count + 1
        }
            
        else if collectionView == self.typeTagCollection {
            return self.temp_type.count + 1
        }
        
        else {
            return self.temp_photo.count + 1
        }
    }
    
    // Make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // 각 collection에 따라 태그 출력
        if collectionView == self.ingredientTagCollection {
            let ingredientTag = collectionView.dequeueReusableCell(withReuseIdentifier: ingre_cellIdentifier, for: indexPath as IndexPath) as! IngredientTagCell
            
            // index가 마지막 셀(+)을 가리킬 때 : 태그 추가 버튼
            if indexPath.row == temp_ingredients.count {
                print(temp_ingredients) // 배열에 태그가 들어갔는지 확인 (지울것)

                ingredientTag.layer.borderColor = UIColor(red: 242/255, green: 101/255, blue: 34/255, alpha: 1.0).cgColor
                ingredientTag.layer.borderWidth = 1
                ingredientTag.backgroundColor = UIColor.white
                ingredientTag.ingredientTagCellLabel.text = "+"
                ingredientTag.ingredientTagCellLabel.textColor = UIColor(red: 242/255, green: 101/255, blue: 34/255, alpha: 1.0)
            }
             
            // index가 그 외의 셀을 가리킬 때 : 태그 입력
            else {
                ingredientTag.layer.borderColor = UIColor.clear.cgColor
                ingredientTag.layer.borderWidth = 0
                ingredientTag.backgroundColor = UIColor(red: 131/255, green: 147/255, blue: 202/255, alpha: 1.0)
                ingredientTag.ingredientTagCellLabel.text = self.temp_ingredients[indexPath.item]
                ingredientTag.ingredientTagCellLabel.textColor = UIColor.white
            }

            // 태그 셀의 가장자리를 둥글게 설정
            ingredientTag.layer.cornerRadius = 13.5
            
            return ingredientTag
        }
            
        else if collectionView == self.timeTagCollection {
            let timeTag = collectionView.dequeueReusableCell(withReuseIdentifier: time_cellIdentifier, for: indexPath as IndexPath) as! TimeTagCell
           
            if indexPath.row == temp_time.count {
                print(temp_time)
                
                timeTag.layer.borderColor = UIColor(red: 242/255, green: 101/255, blue: 34/255, alpha: 1.0).cgColor
                timeTag.layer.borderWidth = 1
                timeTag.backgroundColor = UIColor.white
                timeTag.timeTagCellLabel.text = "+"
                timeTag.timeTagCellLabel.textColor = UIColor(red: 242/255, green: 101/255, blue: 34/255, alpha: 1.0)
            }
                
            else {
                timeTag.layer.borderColor = UIColor.clear.cgColor
                timeTag.layer.borderWidth = 0
                timeTag.backgroundColor = UIColor(red: 131/255, green: 147/255, blue: 202/255, alpha: 1.0)
                timeTag.timeTagCellLabel.text = self.temp_time[indexPath.item]
                timeTag.timeTagCellLabel.textColor = UIColor.white
            }
            
            timeTag.layer.cornerRadius = 13.5
            
            return timeTag
        }
            
        else if collectionView == self.typeTagCollection {
            let typeTag = collectionView.dequeueReusableCell(withReuseIdentifier: type_cellIdentifier, for: indexPath as IndexPath) as! TypeTagCell
            
            if indexPath.row == temp_type.count {
                print(temp_type)
                
                typeTag.layer.borderColor = UIColor(red: 242/255, green: 101/255, blue: 34/255, alpha: 1.0).cgColor
                typeTag.layer.borderWidth = 1
                typeTag.backgroundColor = UIColor.white
                typeTag.typeTagCellLabel.text = "+"
                typeTag.typeTagCellLabel.textColor = UIColor(red: 242/255, green: 101/255, blue: 34/255, alpha: 1.0)
            }
                
            else {
                typeTag.layer.borderColor = UIColor.clear.cgColor
                typeTag.layer.borderWidth = 0
                typeTag.backgroundColor = UIColor(red: 131/255, green: 147/255, blue: 202/255, alpha: 1.0)
                typeTag.typeTagCellLabel.text = self.temp_type[indexPath.item]
                typeTag.typeTagCellLabel.textColor = UIColor.white
            }
            
            typeTag.layer.cornerRadius = 13.5
            
            return typeTag
        }
        
        else if collectionView == self.situationTagCollection {
            let situationTag = collectionView.dequeueReusableCell(withReuseIdentifier: situ_cellIdentifier, for: indexPath as IndexPath) as! SituationTagCell
            
            if indexPath.row == temp_situation.count {
                print(temp_situation)
                
                situationTag.layer.borderColor = UIColor(red: 242/255, green: 101/255, blue: 34/255, alpha: 1.0).cgColor
                situationTag.layer.borderWidth = 1
                situationTag.backgroundColor = UIColor.white
                situationTag.situationTagCellLabel.text = "+"
                situationTag.situationTagCellLabel.textColor = UIColor(red: 242/255, green: 101/255, blue: 34/255, alpha: 1.0)
            }
                
            else {
                situationTag.layer.borderColor = UIColor.clear.cgColor
                situationTag.layer.borderWidth = 0
                situationTag.backgroundColor = UIColor(red: 131/255, green: 147/255, blue: 202/255, alpha: 1.0)
                situationTag.situationTagCellLabel.text = self.temp_situation[indexPath.item]
                situationTag.situationTagCellLabel.textColor = UIColor.white
            }
            
            situationTag.layer.cornerRadius = 13.5
            
            return situationTag
        }
        
        // 네 가지 태그에 모두 해당이 되지 않을 경우 : 사진 첨부 Collection
        else {
            let photoCell = collectionView.dequeueReusableCell(withReuseIdentifier: photo_cellIdentifier, for: indexPath as IndexPath) as! PhotoCell
            
            // 마지막 사진 추가(+) 셀
            if indexPath.row == temp_photo.count {
                // 이미지 파일이 보이지 않도록 설정
                photoCell.photoCellImage.image = nil
                // 임시로 보라색으로 칠함 - <TODO>사진추가 이미지 삽입
                photoCell.backgroundColor = UIColor.purple
            }
            
            else {
                // 이미지 셀
                photoCell.photoCellImage.image = UIImage(named: temp_photo[indexPath.row])
            }
            
            return photoCell
        }
    }
    
    // 각 Collection의 마지막 셀을 눌렀을 때 구현 (태그 또는 사진 추가)
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.ingredientTagCollection {
            if indexPath.item == temp_ingredients.count {
                temp_ingredients += ["newIngre"]     //새로운 태그 추가
            }
        }
        
        else if collectionView == self.timeTagCollection {
            if indexPath.item == temp_time.count {
                temp_time += ["newTime"]
            }
        }
        
        else if collectionView == self.situationTagCollection {
            if indexPath.item == temp_situation.count {
                temp_situation += ["newSitu"]
            }
        }
        
        else if collectionView == self.typeTagCollection {
            if indexPath.item == temp_type.count {
                temp_type += ["newType"]
            }
        }
        
        // 사진 Collection
        else {
            if indexPath.item == temp_photo.count {
                /*  TODO :  마지막 태그(+버튼) 클릭시 갤러리 모달로 띄우고 이미지 선택,
                            선택 완료하면 모달 닫기
                            현재는 임시 이미지를 배열에 추가하도록 되어 있음 */
                temp_photo += ["temp_newImage"]
                print(temp_photo)
            }
            
            else {
                return
            }
        }
        
        // 추가된 데이터를 화면에 반영하기 위해 view를 다시 로드함
        collectionView.reloadData()
        self.view.setNeedsDisplay()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        ref = Database.database().reference()

        // Do any additional setup after loading the view.

// 태그 크기 자동조절을 위한 임시코드
//        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
//        layout.sectionInset = UIEdgeInsets(top: 150, left: 10, bottom: 150, right: 10)
//        // layout.itemSize = CGSize(width: 90, height: 45)
//        layout.itemSize = CGSizeFromString("Aloha")
//        
//        ingredientTagCollection = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
//        ingredientTagCollection!.dataSource = self
//        ingredientTagCollection!.delegate = self
//        ingredientTagCollection!.register(IngredientTagCell.self, forCellWithReuseIdentifier: "ingredientCell")
//        ingredientTagCollection!.backgroundColor = UIColor.white
//        
//        self.view.addSubview(ingredientTagCollection!)
        
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



// Classes for each tag's cells
class IngredientTagCell: UICollectionViewCell {
    @IBOutlet weak var ingredientTagCellLabel: UILabel!
}

class TimeTagCell: UICollectionViewCell {
    @IBOutlet weak var timeTagCellLabel: UILabel!
}

class SituationTagCell: UICollectionViewCell {
    @IBOutlet weak var situationTagCellLabel: UILabel!
}

class TypeTagCell: UICollectionViewCell {
    @IBOutlet weak var typeTagCellLabel: UILabel!
}

class PhotoCell: UICollectionViewCell {
    @IBOutlet weak var photoCellImage: UIImageView!
}
