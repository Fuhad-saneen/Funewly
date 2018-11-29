//
//  DemoTwo2ViewController.swift
//  FuNewLii
//
//  Created by codemac on 08/11/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class DemoTwo2ViewController: UIViewController {
    @IBOutlet weak var ViewOfMessageLockd: UIView!
    @IBOutlet weak var Image_Lockd: UIImageView!
    @IBOutlet weak var MainViewLockdShadow: UIView!
    @IBOutlet weak var ViewForLockdCardDemo: UIView!
    @IBOutlet weak var ViewForMainIconShows: UIView!
    @IBOutlet weak var viewForCreateButtonBar: UIView!
    @IBOutlet weak var profileimg3: UIImageView!
    @IBOutlet weak var Imagepost3: UIImageView!
    @IBOutlet weak var Viewforshadow3: UIView!
    @IBOutlet weak var ViewForProfiles3: UIView!
    @IBOutlet weak var image1Profile: UIImageView!
    @IBOutlet weak var image2Profile: UIImageView!
    @IBOutlet weak var image3Profile: UIImageView!
    @IBOutlet weak var image4Profile: UIImageView!
    @IBOutlet weak var image5Profile: UIImageView!
    @IBOutlet weak var image6Profile: UIImageView!

    
    @IBOutlet weak var View2PROFILE: UIView!
    @IBOutlet weak var View3PROFILE: UIView!
    @IBOutlet weak var View4PROFILE: UIView!
    @IBOutlet weak var View5PROFILE: UIView!
    @IBOutlet weak var View6PROFILE: UIView!
    @IBOutlet weak var View1PROFILE: UIView!

    @IBOutlet weak var cardimageprofile2: UIImageView!
    @IBOutlet weak var viewforcradimageshadow2: UIView!
    @IBOutlet weak var viewforcardmain2: UIView!
    @IBOutlet weak var viewforcardmain: UIView!
    @IBOutlet weak var cardimageprofile: UIImageView!
    @IBOutlet weak var viewforcradimageshadow: UIView!
    @IBOutlet weak var ViewForLyllCards2: UIView!
    @IBOutlet weak var ViewForMemories1: UIView!
    @IBOutlet weak var buttonindicator3: UIButton!
    @IBOutlet weak var buttonindicator2: UIButton!
    @IBOutlet weak var buttonindicator1: UIButton!
    @IBOutlet weak var imagepost2: UIImageView!
    @IBOutlet weak var imagepost1: UIImageView!
    @IBOutlet weak var profileimg2: UIImageView!
    @IBOutlet weak var profileimg1: UIImageView!
    @IBOutlet weak var viewforshadow2: UIView!
    @IBOutlet weak var viewforshadow1: UIView!
    @IBOutlet weak var createMemory: UIButton!
    @IBOutlet weak var posts: UIButton!
    @IBOutlet weak var lockedtell: UIButton!
    @IBOutlet weak var memories: UIButton!
    @IBOutlet weak var diamond: UIButton!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var yours: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        yours.ButtonRounding()
        Button1.ButtonRounding()
        button2.ButtonRounding()
        button3.ButtonRounding()
        sendButton.ButtonRounding()
        sendButton.layer.borderWidth = 0.5
        sendButton.layer.borderColor = UIColor.black.cgColor
        diamond.ButtonRounding()
        diamond.shadowForButton()
        memories.ButtonRounding()
        memories.shadowForButton()
        lockedtell.ButtonRounding()
        lockedtell.shadowForButton()
        posts.ButtonRounding()
        posts.shadowForButton()
        createMemory.ButtonRounding()
        createMemory.shadowForButton()
        imagepost1.layer.cornerRadius = 10
        imagepost2.layer.cornerRadius = 10
        Imagepost3.layer.cornerRadius = 10
        
        profileimg1.ImageRounding()
        profileimg2.ImageRounding()
        profileimg3.ImageRounding()
        viewforshadow1.shadowForCardView()
        viewforshadow2.shadowForCardView()
        Viewforshadow3.shadowForCardView()
        // button indicator
        buttonindicator1.ButtonRounding()
        buttonindicator1.layer.backgroundColor = UIColor(red: 255/255, green: 37/255, blue: 72/255, alpha: 1).cgColor
        buttonindicator2.ButtonRounding()
        buttonindicator3.ButtonRounding()
        buttonindicator2.layer.backgroundColor = UIColor.lightGray.cgColor
        buttonindicator3.layer.backgroundColor = UIColor.lightGray.cgColor
        
        //card
        viewforcradimageshadow.ViewRoundingfunc()
        viewforcardmain.shadowForCardView()
        cardimageprofile.ImageRounding()
        
        viewforcradimageshadow2.ViewRoundingfunc()
        viewforcardmain2.shadowForCardView()
        cardimageprofile2.ImageRounding()
        // BIOGRAPHY
        View1PROFILE.shadowForCardView()
        View2PROFILE.shadowForCardView()
        View3PROFILE.shadowForCardView()
        View4PROFILE.shadowForCardView()
        View5PROFILE.shadowForCardView()
        View6PROFILE.shadowForCardView()
        
        View1PROFILE.layer.cornerRadius = 15.0
        View2PROFILE.layer.cornerRadius = 15.0
        View3PROFILE.layer.cornerRadius = 15.0
        View4PROFILE.layer.cornerRadius = 15.0
        View5PROFILE.layer.cornerRadius = 15.0
        View6PROFILE.layer.cornerRadius = 15.0
        
        image1Profile.ImageRounding()
        image2Profile.ImageRounding()
        image3Profile.ImageRounding()
        image4Profile.ImageRounding()
        image5Profile.ImageRounding()
        image6Profile.ImageRounding()
        
       /* image1Profile.layer.borderWidth = 1.0
        image1Profile.layer.borderColor = UIColor(red: 0/255, green: 204/255, blue: 158/255, alpha: 1).cgColor
        
        image2Profile.layer.borderWidth = 1.0
        image2Profile.layer.borderColor = UIColor(red: 0/255, green: 204/255, blue: 158/255, alpha: 1).cgColor
        image3Profile.layer.borderWidth = 1.0
        image3Profile.layer.borderColor = UIColor(red: 0/255, green: 204/255, blue: 158/255, alpha: 1).cgColor
        image4Profile.layer.borderWidth = 1.0
        image4Profile.layer.borderColor = UIColor(red: 0/255, green: 204/255, blue: 158/255, alpha: 1).cgColor
        image5Profile.layer.borderWidth = 1.0
        image5Profile.layer.borderColor = UIColor(red: 0/255, green: 204/255, blue: 158/255, alpha: 1).cgColor
        image6Profile.layer.borderWidth = 1.0
        image6Profile.layer.borderColor = UIColor(red: 0/255, green: 204/255, blue: 158/255, alpha: 1).cgColor */
        
        ViewForMemories1.isHidden = false
        ViewForLyllCards2.isHidden = true
        ViewForProfiles3.isHidden = true
        
        //Lock'd card designs
        MainViewLockdShadow.ShadowForView()
        MainViewLockdShadow.layer.cornerRadius = 20.0
        Image_Lockd.ImageRounding()
        ViewOfMessageLockd.ShadowForView()
    }
    @IBAction func buttonindicator1(_ sender: Any) {
        buttonindicator1.layer.backgroundColor = likerRed.cgColor
        buttonindicator2.layer.backgroundColor = UIColor.lightGray.cgColor
        buttonindicator3.layer.backgroundColor = UIColor.lightGray.cgColor
        ViewForMemories1.isHidden = false
        ViewForLyllCards2.isHidden = true
        ViewForProfiles3.isHidden = true
    }
    @IBAction func buttonindicator2(_ sender: Any) {
        buttonindicator2.layer.backgroundColor = UIColor.green.cgColor
        buttonindicator1.layer.backgroundColor = UIColor.lightGray.cgColor
        buttonindicator3.layer.backgroundColor = UIColor.lightGray.cgColor
        ViewForMemories1.isHidden = true
        ViewForLyllCards2.isHidden = false
        ViewForProfiles3.isHidden = true
    }
    @IBAction func buttonindicator3(_ sender: Any) {
        buttonindicator3.layer.backgroundColor = UIColor.green.cgColor
        buttonindicator2.layer.backgroundColor = UIColor.lightGray.cgColor
        buttonindicator1.layer.backgroundColor = UIColor.lightGray.cgColor
        ViewForMemories1.isHidden = true
        ViewForLyllCards2.isHidden = true
        ViewForProfiles3.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func GoodOldMemories(_ sender: Any) {
        
        performSegue(withIdentifier: "gallery", sender: self)
    }
    @IBAction func MyPhotos(_ sender: Any) {
        performSegue(withIdentifier: "fromDemo", sender: self)
    }
    @IBAction func demopage(_ back: UIStoryboardSegue){
    
    }

}
