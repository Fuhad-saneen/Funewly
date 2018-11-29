//
//  ImageViewPageVwCntrlr.swift
//  FuNewLii
//
//  Created by codemac on 22/10/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class ImageViewMainPageVwCntrlr: UIViewController {
    @IBOutlet weak var FloatBttn_Liker2: UIButton!
    @IBOutlet weak var FloatBttn_Shining: UIButton!
    @IBOutlet weak var Like_Button: UIButton!
    @IBOutlet weak var ViewForCommentBttn: UIView!
    @IBOutlet weak var ViewForLikrBttn: UIView!
    @IBOutlet weak var ViewForShiningBttn: UIView!
    @IBOutlet weak var Description_Of_Post: UILabel!
    @IBOutlet weak var Title_Of_Post: UILabel!
    @IBOutlet weak var Image_Posted: UIImageView!
    @IBOutlet weak var Back_button: UIButton!

    var LikeStatusIdentifier : Int?
    var photoCellSelectedChecking : Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       /* Like_Button.center.x = self.view.frame.width + 30

        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .allowAnimatedContent, animations: ({
        self.Like_Button.center.x = self.view.frame.width/2
            
        }), completion: nil) */
        // Do any additional setup after loading the view.
        FloatBttn_Liker2.isHidden = true
        FloatBttn_Shining.isHidden = true
        ViewForLikrBttn.ViewRoundingfunc()
        ViewForLikrBttn.ShadowForView()
        ViewForShiningBttn.ViewRoundingfunc()
        ViewForShiningBttn.ShadowForView()
        ViewForCommentBttn.ViewRoundingfunc()
        ViewForCommentBttn.ShadowForView()
        
        if LikeStatusIdentifier == 1 && photoCellSelectedChecking == true {
            Like_Button.setImage(UIImage(named: "Liker2"), for: .normal)
        }
        else if LikeStatusIdentifier == 0 && photoCellSelectedChecking == true{
        
            Like_Button.setImage(UIImage(named: "Liker1"), for: .normal)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func LikeBttn_Clicked(_ sender: Any) {
        Like_Button.setImage(UIImage(named: "Liker2"), for: UIControlState.normal)
        FloatBttn_Liker2.isHidden = false
        FloatBttn_Liker2.center.y = self.view.frame.height + 30
        
        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 1.5, initialSpringVelocity: 1.0, options: .allowAnimatedContent, animations: ({
            self.FloatBttn_Liker2.center.y = self.view.frame.height/1.5
            
        }), completion: { mm in self.FloatBttn_Liker2.isHidden = true})
    }
    
    @IBAction func ShiningBttn_Clicked(_ sender: Any){
        FloatBttn_Shining.isHidden = false
        FloatBttn_Shining.center.y = self.view.frame.height + 30
        
        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 1.5, initialSpringVelocity: 1.0, options: .allowAnimatedContent, animations: ({
            self.FloatBttn_Shining.center.y = self.view.frame.height/1.5
            
        }), completion: { mm in self.FloatBttn_Shining.isHidden = true})

    
    }
    @IBAction func BackButtonClick(_ sender: Any) {
        performSegue(withIdentifier: "GoodOldMemMainPage", sender: self)
        
    }



}
