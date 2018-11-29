//
//  ForgetPasswordVwCntlr.swift
//  FuNewLii
//
//  Created by codemac-08i on 01/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class ForgetPasswordVwCntlr: UIViewController,UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func NextbttnClicked(_ sender: Any) {
        //OTP section code here
        performSegue(withIdentifier: "SettingPassword", sender: self)
    }

    @IBAction func backtoForgetPass(_ backForgetPass: UIStoryboardSegue){
    
    }

}
