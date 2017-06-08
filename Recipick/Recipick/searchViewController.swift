//
//  searchViewController.swift
//  Recipick
//
//  Created by SangU on 2017. 6. 8..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import UIKit
import YNSearch

class searchViewController: YNSearchViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ynSearch:YNSearch = YNSearch()

        // Do any additional setup after loading the view.
        let demoDatabase = ["계란", "김치", "양파"]

        ynSearch.setCategories(value: demoDatabase)
        ynSearch.setSearchHistories(value: demoDatabase)
        
        self.ynSearchinit()
        
        
        self.initData(database: demoDatabase)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
