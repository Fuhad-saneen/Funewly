//
//  PreviewPostVwCntroler.swift
//  FuNewLii
//
//  Created by codemac-08i on 27/08/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class PreviewPostVwCntroler: UIViewController,UIScrollViewDelegate {
    @IBOutlet weak var Details_txtView: UITextView!
    @IBOutlet weak var PrsonImage: UIImageView!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var ViewForBorder: UIView!
    @IBOutlet weak var ImgPageController: UIPageControl!

    @IBOutlet weak var ScrollViewForImage: UIScrollView!
    @IBOutlet weak var PostingPersonImage: UIButton!
    

    var name : String?
    var introduction : String?
    var moreInfo : String?
    var Achievements : String?
    var Pro_Details : String?
    var SocialMedia : String?
    var image1 : UIImage?
    var image2 : UIImage?

    
    var images : [String] = /*[image1 , image2]*/["ab","ad"]
    var frame_scroll = CGRect(x: 0, y: 0, width: 0, height: 0)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NameLabel.text = name
        Details_txtView.text = introduction
        
        
        
        ViewForBorder.layer.cornerRadius = 20.0
        ViewForBorder.layer.borderColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1).cgColor
        ViewForBorder.layer.borderWidth = 3.0
        
        ImgPageController.numberOfPages = images.count
        for indx in 0..<images.count {
        frame_scroll.origin.x = ScrollViewForImage.frame.size.width * CGFloat(indx)
            frame_scroll.size = ScrollViewForImage.frame.size
            
            let imageview = UIImageView(frame: frame_scroll)
            imageview.image = UIImage(named: images[indx])
            self.ScrollViewForImage.addSubview(imageview)
            
        }
        ScrollViewForImage.layer.cornerRadius = 10.0
        
        PostingPersonImage.layer.cornerRadius = PostingPersonImage.layer.bounds.height/2
        ScrollViewForImage.contentSize = CGSize(width: (ScrollViewForImage.frame.size.width * CGFloat(images.count)), height: ScrollViewForImage.frame.size.height)
        
        ScrollViewForImage.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
