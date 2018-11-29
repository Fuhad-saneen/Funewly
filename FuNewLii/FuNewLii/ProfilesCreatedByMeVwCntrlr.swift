//
//  ProfilesCreatedByMeVwCntrlr.swift
//  FuNewLii
//
//  Created by codemac on 01/10/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class ProfilesCreatedByMeVwCntrlr: UIViewController,UIScrollViewDelegate {
    @IBOutlet weak var times_agoLabel: UILabel!
    @IBOutlet weak var ViewForBorder: UIView!
    @IBOutlet weak var LikeButton: UIButton!
    @IBOutlet weak var Like_CountButton: UIButton!
    @IBOutlet weak var MyProfileIMGbutton: UIImageView!
    @IBOutlet weak var PersonProfileName: UILabel!
    @IBOutlet weak var TextField_fetch_1: UITextView!
    
    @IBOutlet weak var img_pageController: UIPageControl!
    @IBOutlet weak var images_scrollview: UIScrollView!
    var images : [String] = ["ab","ac","ad"]
    var frame_scroll = CGRect(x: 0, y: 0, width: 0, height: 0)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img_pageController.numberOfPages = images.count
        for indx in 0..<images.count {
            frame_scroll.origin.x = images_scrollview.frame.size.width * CGFloat(indx)
            frame_scroll.size = images_scrollview.frame.size
            
            let imageview = UIImageView(frame: frame_scroll)
            imageview.image = UIImage(named: images[indx])
            self.images_scrollview.addSubview(imageview)
            
        }
        /*other contents*/
        // WrittenPersonIMGbutton.image = UIImage(
        MyProfileIMGbutton.layer.cornerRadius = MyProfileIMGbutton.layer.bounds.height/2
        // PersonProfileName.text =
        images_scrollview.layer.cornerRadius = 10.0
        //Like_CountButton.text =
        ViewForBorder.layer.cornerRadius = 20.0
        ViewForBorder.layer.borderColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1).cgColor
        ViewForBorder.layer.borderWidth = 3.0
        
        
        
        images_scrollview.contentSize = CGSize(width: (images_scrollview.frame.size.width * CGFloat(images.count)), height: images_scrollview.frame.size.height)
        
        images_scrollview.delegate = self
        
        //* TextField_fetch_1.text = (Fetch the 1st text field's data and put space by /n inorder to adjust or keep the distance + 2nd textfield's data +/n,/n, then 3rd and so on...)
    }
    
    var PageIdenty : String?
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //scrollview for image's method
    //=============================
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = images_scrollview.contentOffset.x / images_scrollview.frame.size.width
        img_pageController.currentPage = Int(pageNumber)
    }
    
    var LikeCount = 1  /* Like Function*/
    @IBAction func LikeButton_Clicked(_ sender: UIButton) {
        sender.LikeBtnAnimation()
        if LikeCount == 1{
            
            sender.setImage(UIImage(named: "Liker2"), for: .normal)
            LikeCount = 0
            print(sender.tag)
        } else if LikeCount == 0{
            LikeCount = 1
            
            sender.setImage(UIImage(named: "Liker1"), for: .normal)
            print(sender.tag)
        }
        
}
    
    @IBAction func BackButtonClick(_ sender: UIButton) {
        if PageIdenty == "FromOtherPerson_Profile"{
        performSegue(withIdentifier: "OtherPersMainProfile", sender: self)
        
        }
        
    }
    
}
