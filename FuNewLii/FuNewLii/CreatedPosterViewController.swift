//
//  CreatedPosterViewController.swift
//  Fu_blii
//
//  Created by codemac-08i on 18/07/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class CreatedPosterViewController: UIViewController {
    @IBOutlet weak var Take_Screenshot_btn: UIButton!
    
    @IBOutlet weak var mainView_for_border: UIView!
  
    @IBOutlet weak var ly_Logo_imageView: UIImageView!

    var BlueGradient = UIColor(red: 0/255, green: 160/255, blue: 238/255, alpha: 1)
    var LightBlue = UIColor(red: 0/255, green: 232/255, blue: 251/255, alpha: 1)
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        mainView_for_border.setGradientBackground(colorOne: UIColor.yellow, colorTwo: UIColor.white)
        Take_Screenshot_btn.setGradientBackground(colorOne: BlueGradient, colorTwo: LightBlue)
        Take_Screenshot_btn.setTitleColor(UIColor.white, for: .normal)
       Take_Screenshot_btn.layer.cornerRadius = 15.0
        mainView_for_border.layer.borderColor = UIColor(red: 214/255, green: 214/255, blue: 214/255, alpha: 0.5).cgColor
        mainView_for_border.layer.cornerRadius = 5.0
        mainView_for_border.layer.borderWidth = 2.0
      
        // create a view with size 400 x 400
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        
        // Create a gradient layer
        let gradient = CAGradientLayer()
        
        // gradient colors in order which they will visually appear
        gradient.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
        
        // Gradient from left to right
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        
        // set the gradient layer to the same size as the view
        gradient.frame = view.bounds
        // add the gradient layer to the views layer for rendering
        view.layer.addSublayer(gradient)
    }
    
   
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var followPageIndentify : String?
    @IBAction func created_and_shared(_ sender: Any) {
//        performSegue(withIdentifier: "home_page_aftersignup", sender: self)
        followPageIndentify = "FromCreatedPosterPage"
        
       performSegue(withIdentifier: "FollowFriends_InstaFb", sender: self)
   }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FollowFriends_InstaFb"{
        let seg = segue.destination as! FriendsMineVwControler
            seg.followPageID = followPageIndentify
        
        }
    }

}
