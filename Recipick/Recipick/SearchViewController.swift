//
//  SearchViewController.swift
//  Recipick
//
//  Created by SangU on 2017. 6. 8..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import UIKit
import YNSearch

class SearchViewController: YNSearchViewController, YNSearchDelegate {

    @IBOutlet weak var textFieldView: YNSearchTextFieldView!
    @IBOutlet var searchView: YNSearchView!
    @IBOutlet weak var mainview: YNSearchMainView!
    @IBOutlet weak var scrollview: UIScrollView!
    
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ynSearchView = searchView
        self.ynSearchTextfieldView = textFieldView
        
        backButton.setImage(UIImage(named: "ui_back"), for: .normal)
        backButton.frame = CGRect(x: 5, y: 30, width:15, height: 20)
        print("nothing")
        searchView.ynScrollView = scrollview
        searchView.ynSearchMainView = mainview
        let ynSearch = YNSearch()
        
        // Do any additional setup after loading the view.
        
        let tags = ["치즈", "요거트", "우유", "생크림", "생선", "어묵", "조개", "오징어", "쌈채소", "호박", "감자", "고구마", "쇠고기", "돼지고기", "닭고기", "달걀", "김치", "밥", "과일", "10분 내외", "30분 내외", "1시간", "2시간", "3시간 이상", "하루 이상", "파티", "저녁식사", "다이어트", "아침", "아플 때", "안주", "백반", "당충전", "생일상", "한식", "중식", "일식", "세계 음식", "디저트"]
        
        ynSerach.setCategories(value: tags)
        ynSerach.setSearchHistories(value: tags)
        
        self.ynSearchinit()
        
        self.delegate = self
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        
        self.setYNCategoryButtonType(type: .colorful)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func ynSearchListViewDidScroll() {
        self.ynSearchTextfieldView.ynSearchTextField.endEditing(true)
    }
    
    
    func ynSearchHistoryButtonClicked(text: String) {
        self.pushViewController(text: text)
        print(text)
    }
    
    func ynCategoryButtonClicked(text: String) {
        self.pushViewController(text: text)
        print(text)
    }
    
    func ynSearchListViewClicked(key: String) {
        self.pushViewController(text: key)
        print(key)
    }
    
    func ynSearchListViewClicked(object: Any) {
        print(object)
    }
    
    func ynSearchListView(_ ynSearchListView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.ynSearchView.ynSearchListView.dequeueReusableCell(withIdentifier: YNSearchListViewCell.ID) as! YNSearchListViewCell
        if let ynmodel = self.ynSearchView.ynSearchListView.searchResultDatabase[indexPath.row] as? YNSearchModel {
            cell.searchLabel.text = ynmodel.key
        }
        
        return cell
    }
    
    func ynSearchListView(_ ynSearchListView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let ynmodel = self.ynSearchView.ynSearchListView.searchResultDatabase[indexPath.row] as? YNSearchModel, let key = ynmodel.key {
            // Call listview clicked based on key
            self.ynSearchView.ynSearchListView.ynSearchListViewDelegate?.ynSearchListViewClicked(key: key)
            
            // return object you set in database
            self.ynSearchView.ynSearchListView.ynSearchListViewDelegate?.ynSearchListViewClicked(object: self.ynSearchView.ynSearchListView.database[indexPath.row])
            
            // Append Search history
            self.ynSearchView.ynSearchListView.ynSearch.appendSearchHistories(value: key)
        }
    }
    
    
    func pushViewController(text:String) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TagViewController") as! DetailViewController

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
