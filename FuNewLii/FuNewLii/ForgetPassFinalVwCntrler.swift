//
//  ForgetPassFinalVwCntrler.swift
//  FuNewLii
//
//  Created by codemac-08i on 06/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class ForgetPassFinalVwCntrler: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var ConfirmPassword: UITextField!
    @IBOutlet weak var UpdatePassBtn: UIButton!
    @IBOutlet weak var NewPassword: UITextField!
   
    @IBOutlet weak var ViewForNewPassword: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        ViewForNewPassword.isHidden = true
        UpdatePassBtn.layer.cornerRadius = 2.0
        ViewForNewPassword.layer.cornerRadius = 10.0
        ViewForNewPassword.ShadowForView()
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func Verify_BtnClicked(_ sender: Any) {
        
        ViewForNewPassword.isHidden = false
        ViewForNewPassword.endEditing(false)
        
    }
    
    @IBAction func UpdateBttn_Click(_ sender: Any) {
        
        let alert = UIAlertController(title: "Password changed", message: "successfully updated new password", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { alt in self.ViewForNewPassword.isHidden = true }))
        
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func CancelForNewPassVw(_ sender: Any) {
        self.ViewForNewPassword.isHidden = true
    }
    
}
