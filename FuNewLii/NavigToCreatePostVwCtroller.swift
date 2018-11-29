//
//  NavigToCreatePostVwCtroller.swift
//  FuNewLii
//
//  Created by codemac-08i on 03/08/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class NavigToCreatePostVwCtroller: UIViewController {
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button1: UIButton!

    @IBOutlet weak var viewFor_feature: UIView!
    @IBOutlet weak var write_feature: UIButton!
    @IBOutlet weak var Friend: UIButton!
    @IBOutlet weak var public_figure: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        Button1.shadowForButton()
        Button2.shadowForButton()
        Button3.shadowForButton()
        Button4.shadowForButton()
        Button1.layer.cornerRadius = 15.0
        Button2.layer.cornerRadius = 15.0
        Button3.layer.cornerRadius = 15.0
        Button4.layer.cornerRadius = 15.0
        
//        Button4.ButtonRounding()
//        Button1.ButtonRounding()
//        Button2.ButtonRounding()
//        Button3.ButtonRounding()
        
        //public_figure.layer.borderWidth = 1
        //public_figure.layer.borderColor = UIColor(red: 0/255, green: 204/255, blue: 158/255, alpha: 1 ).cgColor
        
       // public_figure.shadowForButton()
       
        Friend.layer.borderWidth = 1
//        Friend.layer.borderColor = UIColor(red: 128/255, green: 0/255, blue: 128/255, alpha: 1).cgColor
     
        
        
        write_feature.layer.borderWidth = 1
        write_feature.layer.borderColor = UIColor(red: 255/255, green: 52/255, blue: 128/255, alpha: 1).cgColor
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var buttonNameIdentify : String?
    @IBAction func WriteFeaturebutton(_ sender: Any) {
        performSegue(withIdentifier: "FeatureCardCreation", sender: self)
    }
    @IBAction func BioForFriendClicked(_ sender: Any) {
                buttonNameIdentify = "to: Mobile number"
        performSegue(withIdentifier: "BioProfileCreatePage", sender: self)

    }
    @IBAction func PublicFigureClicked(_ sender: Any) {
        buttonNameIdentify = "to: email id"
        performSegue(withIdentifier: "BioProfileCreatePage", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "BioProfileCreatePage"{
        var buttonClicker = segue.destination as! Creation_of_PostNewViewController
        buttonClicker.ButtonClickedidentify = buttonNameIdentify
        }
        
    }
    
    @IBAction func BackToNavigation(_ BackTONavg : UIStoryboardSegue){
    }
}
