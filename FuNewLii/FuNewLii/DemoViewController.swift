//
//  DemoViewController.swift
//  FuNewLii
//
//  Created by codemac on 30/10/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {
    @IBOutlet weak var Star: UIButton!
    @IBOutlet weak var Btn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      Btn.isHidden = true
        Star.isHidden = true
    }

    @IBAction func BClick(_ sender: Any) {
        Btn.isHidden = false
        Btn.center.y = self.view.frame.height + 30
        
        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 1.5, initialSpringVelocity: 1.0, options: .allowAnimatedContent, animations: ({
            self.Btn.center.y = self.view.frame.height/1.5
            
        }), completion: { mm in self.Btn.isHidden = true})
        
/* Btn.center.y = self.view.frame.height + 30
 
 UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.2 /*0.5*/, initialSpringVelocity: 1.0, options: .allowAnimatedContent, animations: ({
 self.Btn.center.y = self.view.frame.height/2
 
 }), completion: { mm in self.Btn.isHidden = true})*/
        /*Btn.isHidden = false
         Btn.center.y = self.view.frame.height + 30
         
         UIView.animate(withDuration: 2.0, delay: 0, usingSpringWithDamping: 3.0, initialSpringVelocity: 20.0, options: .allowAnimatedContent, animations: ({
         self.Btn.center.y = self.view.frame.height/2
         
         }), completion: { mm in self.Btn.isHidden = true})*/
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
