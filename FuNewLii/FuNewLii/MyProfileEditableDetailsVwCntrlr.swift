//
//  MyProfileEditableDetailsVwCntrlr.swift
//  FuNewLii
//
//  Created by codemac on 01/11/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class MyProfileEditableDetailsVwCntrlr: UIViewController {
    @IBOutlet weak var ViewForProfileIcon: UIView!
    @IBOutlet weak var Profile_Name: UITextField!
    @IBOutlet weak var Profile_Image: UIButton!

    var myProIdentify : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Profile_Image.ButtonRounding()
        ViewForProfileIcon.ViewRoundingfunc()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Back_Bttn_click(_ sender: Any) {
        if myProIdentify == "FromSettingsPage"{
        performSegue(withIdentifier: "Settings_Page", sender: self)
        
        }
        else if myProIdentify == "FromMyPublishedPost"{
        
        performSegue(withIdentifier: "BackToMyPosts", sender: self)
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
