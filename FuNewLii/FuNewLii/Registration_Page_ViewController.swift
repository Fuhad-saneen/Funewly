//
//  Registration_Page_ViewController.swift
//  Fu_blii
//
//  Created by codemac-08i on 17/07/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class Registration_Page_ViewController: UIViewController,UITextFieldDelegate{
    @IBOutlet weak var SignUp_Button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        SignUp_Button.layer.shadowColor = UIColor(red: 230/255 ,green: 230/255 ,blue: 230/255 ,alpha: 1).cgColor
//            SignUp_Button.layer.shadowRadius = 1.0
//            SignUp_Button.layer.shadowOffset = CGSize(width: 1, height: 1)
//        SignUp_Button.layer.shadowOpacity = 2.0

        //SignUp_Button.layer.borderColor = UIColor(red: 255/255, green: 192/255, blue: 21/255, alpha: 1).cgColor
        //SignUp_Button.layer.borderWidth = 0.5
        SignUp_Button.ButtonOvelShape()
        SignUp_Button.shadowForButton()
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
    
   

    @IBAction func sign_Up_button(_ sender: Any) {
        
       performSegue(withIdentifier: "created_poster", sender: self)
    }
    
}
