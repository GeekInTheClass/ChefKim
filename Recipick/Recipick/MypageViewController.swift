//
//  MypageViewController.swift
//  Recipick
//
//  Created by ParkDongHyuck on 2017. 6. 2..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import UIKit

class MypageViewController: UIViewController {
    
    @IBOutlet weak var backButton: UIButton!

    @IBAction func backButtonAction(_ sender: Any) {
        let _ = self.navigationController?.popViewController(animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
