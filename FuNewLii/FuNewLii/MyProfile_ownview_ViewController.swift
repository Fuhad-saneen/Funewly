//
//  MyProfile_ownview_ViewController.swift
//  Fu_blii
//
//  Created by codemac-08i on 18/07/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class MyProfile_ownview_ViewController: UIViewController,UITextViewDelegate {
    @IBOutlet weak var Viewfor_TxtViewBorder: UIView!
    @IBOutlet weak var LikeButton: UIButton!
    @IBOutlet weak var imageView_mainImage: UIImageView!
    @IBOutlet weak var image_OfPostedPerson: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        image_OfPostedPerson.layer.cornerRadius = image_OfPostedPerson.layer.bounds.height/2
        imageView_mainImage.layer.cornerRadius = 10.0
        
        
        Viewfor_TxtViewBorder.layer.cornerRadius = 20.0
        Viewfor_TxtViewBorder.layer.borderColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1).cgColor
        Viewfor_TxtViewBorder.layer.borderWidth = 3.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textViewDidChange(_ textView: UITextView) {
        let fixedWidth = textView.frame.size.width
        textView.sizeThatFits(CGSize(width: fixedWidth, height: CGFloat.greatestFiniteMagnitude))
        let newSize = textView.sizeThatFits(CGSize(width: fixedWidth, height: CGFloat.greatestFiniteMagnitude))
        var newFrame = textView.frame
        newFrame.size = CGSize(width: max(newSize.width, fixedWidth), height: newSize.height)
        textView.frame = newFrame
        
    }

    @IBAction func Back_buttonClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "BackTo_PublishedPost", sender: self)
    }
    
    @IBAction func Settings_buttonClicked(_ sender: Any) {
        performSegue(withIdentifier:"Settings_from_myProfile", sender: self)
    }
   
//    var counT = 1 /*For Like Button*/
//    @IBAction func LikeButton_Clicked(_ sender: UIButton) {
//      
//    
//        if sender.tag == 1{
//          
//            LikeButton.setImage(UIImage(named: "Liker2"), for: .normal)
//            sender.tag = 2
//        } else if sender.tag == 2{
//          
//            LikeButton.setImage(UIImage(named: "Liker1"), for: .normal)
//            sender.tag = 1
//        }
//        
//    }
    var LikeCount = 1  /* Like Function*/
    @IBAction func LikeButton_Clicked(_ sender: UIButton) {
        sender.LikeBtnAnimation()
        if LikeCount == 1{
            
            LikeButton.setImage(UIImage(named: "Liker2"), for: .normal)
            LikeCount = 0
        } else if LikeCount == 0{
            LikeCount = 1
            
            LikeButton.setImage(UIImage(named: "Liker1"), for: .normal)
        }
        
    }
    
    
    @IBAction func ProfileWriterImageClick(_ sender: Any) {
        performSegue(withIdentifier: "FromMyBioPage", sender: self)
    }
    
    @IBAction func backToMyOwnBio(_ Back: UIStoryboardSegue){
    
    }
    var ProfilePageIdentify : String?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FromMyBioPage"{
            let seg = segue.destination as! OtherPersonMainProfileVwControlr
            seg.ProfilePageSegueIdentify = "FromMyOwnProfile"
            
        }
    }
    
}
