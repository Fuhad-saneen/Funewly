//
//  LOGIN_page_VwController.swift
//  Fu_blii
//
//  Created by codemac-08i on 13/07/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit
import Alamofire



class LOGIN_page_VwController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var User_Name: UITextField!
    @IBOutlet weak var sign_in_button: UIButton!
    @IBOutlet weak var ViewFor_Shadow: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

      //sign_in_button.layer.cornerRadius = 17.0
        //sign_in_button.layer.borderColor = UIColor(red: 255/255, green: 192/255, blue: 21/255, alpha: 1).cgColor
        //sign_in_button.layer.borderWidth = 0.5
        sign_in_button.ButtonOvelShape()
        sign_in_button.shadowForButton()
    }
    func login_func(){
        if Password.text?.isEmpty ?? false && User_Name.text?.isEmpty ?? false {
            let name = [
                "email" : User_Name.text,
                "password" : Password.text
            ]
            Alamofire.request("https://fuhad.000webhostapp.com/login.php", method: .post, parameters: name, encoding: JSONEncoding.default, headers: ["Content-Type" : "application/json"]).responseJSON { (repo) in
                print(repo.result.value)
            }
        } else if User_Name.text?.isEmpty ?? true || Password.text?.isEmpty ?? true  {
            User_Name.text = ""
            Password.text = ""
        }

    
    
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
    
    @IBAction func SignIn_Clicked(_ sender: Any) {
        login_func()
    }

    @IBAction func Register_now_button(_ sender: Any) {
        performSegue(withIdentifier: "register_now", sender: self)
        
    }
    @IBAction func LogInPage(_ Logout: UIStoryboardSegue){
    
    }
   
    @IBAction func forgetPasswordBtn(_ sender: Any) {
        performSegue(withIdentifier: "forgetPassword", sender: self)
    }
}
