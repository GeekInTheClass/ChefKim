//
//  IngredientViewController.swift
//  Recipick
//
//  Created by ParkDongHyuck on 2017. 5. 25..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import UIKit
import AccordionMenuSwift

class IngredientViewController: UIViewController {

    @IBOutlet weak var IngredientListTable: UITableView!
    
    let ingredients = ["유제품","고기","야채"]
    let images = ["milk","meat","vegetable"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        IngredientListTable.dataSource = self
        IngredientListTable.delegate = self
        
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

// tableview의 datasource와 delegate 등록
extension IngredientViewController: UITableViewDataSource{ // table row 갯수 (menu 배열의 갯수만큼)
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingredients.count
    } // 각 row 마다 데이터 세팅.
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // 첫 번째 인자로 등록한 identifier, cell은 as 키워드로 앞서 만든 custom cell class화 해준다.
        let cell = IngredientListTable.dequeueReusableCell(withIdentifier: "IngredientListCell", for: indexPath) as! IngredientListCell // 위 작업을 마치면 커스텀 클래스의 outlet을 사용할 수 있다.
        cell.IngredientCellLabel.text = ingredients[indexPath.row]
        cell.IngredientCellImage.image = UIImage(named: images[indexPath.row])
        
        return cell } }

extension IngredientViewController: UITableViewDelegate{ }
