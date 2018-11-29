//
//  SettingsViewController.swift
//  Fu_blii
//
//  Created by codemac-08i on 18/07/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var EditProfile: UIButton!
    @IBOutlet weak var Block_ProfileCreation: UIButton!
    @IBOutlet weak var Share_with_friends_Bttn: UIButton!
    @IBOutlet weak var Block_Users: UIButton!
    @IBOutlet weak var Private_account: UIButton!
    @IBOutlet weak var Language_change: UIButton!
    @IBOutlet weak var Notification: UIButton!
    @IBOutlet weak var Help_Center: UIButton!
    @IBOutlet weak var Report_Problem: UIButton!
    @IBOutlet weak var Privacy_Policy: UIButton!
    @IBOutlet weak var Terms_And_Condition: UIButton!
    @IBOutlet weak var OpenSource_Libraries: UIButton!
    @IBOutlet weak var AccountPrivating_Switch: UISwitch!
    @IBOutlet weak var NotificationSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        Share_with_friends_Bttn.SettingsBtn_Design()
        EditProfile.SettingsBtn_Design()
        Block_ProfileCreation.SettingsBtn_Design()
        Share_with_friends_Bttn.SettingsBtn_Design()
        Block_Users.SettingsBtn_Design()
        Private_account.SettingsBtn_Design()
        Language_change.SettingsBtn_Design()
        Notification.SettingsBtn_Design()
        Help_Center.SettingsBtn_Design()
        Report_Problem.SettingsBtn_Design()
        Privacy_Policy.SettingsBtn_Design()
        Terms_And_Condition.SettingsBtn_Design()
        OpenSource_Libraries.SettingsBtn_Design()
        
        
        NotificationSwitch.transform = CGAffineTransform(scaleX: 0.75, y: 0.75)
        
       AccountPrivating_Switch.transform = CGAffineTransform(scaleX: 0.75, y: 0.75)
    }
    @IBAction func Notification_SwitchController(_ sender: UISwitch) {
        if (sender.isOn) == true{
        //* CODE FOR NOTIFICATION ON */
        print("Notification is turned On")
    
        
        } else {
            //* CODE FOR TURNING OFF THE NOTIFICATION */
            let alert = UIAlertController(title: "Notification turned off", message: "Enable notification to be updated", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.destructive, handler: nil/*{ alt in self. write code here to notification turning off }*/))
            self.present(alert, animated: true, completion: nil)
            print("notification is turned Off")
        }
        
    }
    
    var SettingBttnSelectIdentify : String?
    @IBAction func Language_set(_ sender: Any) {
        SettingBttnSelectIdentify = "Language_Change"
        performSegue(withIdentifier: "Settings_Assistant", sender: self)
        
    }
    @IBAction func Block_ProfileCreation(_ sender: Any) {
        SettingBttnSelectIdentify = "Block_ProfileCreation"
        performSegue(withIdentifier: "Settings_Assistant", sender: self)
        
    }
    @IBAction func HideFrom_BlockUsers(_ sender: Any) {
        SettingBttnSelectIdentify = "HideAndBlockUsers"
        performSegue(withIdentifier: "Settings_Assistant", sender: self)
    }
   
    @IBAction func Edit_Profile_BttnClick(_ sender: Any) {
        
        
        performSegue(withIdentifier: "Edit_ProfilePgae", sender: self)
        
    }
   
    @IBAction func Private_accountSwitch(_ sender: UISwitch) {
        if (sender.isOn) == true{
        //CODE FOR ACCOUNT PRIVATISING
        
            let alert = UIAlertController(title: "Private account", message: "your account is private now, only your frieds can see your posts", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.destructive, handler: nil/*{ alt in self. write code here to privatising the account }*/))
            self.present(alert, animated: true, completion: nil)
      
        }
        else{
        print("Account is public now")
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    
    @IBAction func Diamond_For_homebuttonClicked(_ sender: Any) {
        performSegue(withIdentifier: "ToHome_from_Settings", sender: self)
    }
    
    @IBAction func LogoutBtnClicked(_ sender: UIButton) {
        
        let alert2 = UIAlertController(title: "Log out from Lyll", message: "Are you sure about log out?", preferredStyle : UIAlertControllerStyle.alert)
        
        let submit = UIAlertAction(title: "Yes" , style: .default , handler: { LogoutFunc in self.performSegue(withIdentifier: "LoginPage" , sender: self)})
        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        cancel.setValue(UIColor.black, forKey: "titleTextColor")
        
        alert2.addAction(submit)
        alert2.addAction(cancel)
        
        alert2.view.tintColor = UIColor(red: 255/255, green: 0/255, blue: 82/255, alpha: 1)
        
        self.present(alert2, animated : true, completion: nil)
    }
    
    var pageSettings = "FromSettingsPage"
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Settings_Assistant" {
        let segg = segue.destination as! SettingAssistantVwCntrlr
        segg.ButtonItemIdentifier = SettingBttnSelectIdentify
            print(SettingBttnSelectIdentify!)
        }
        if segue.identifier == "Edit_ProfilePgae"{
        let seg = segue.destination as! MyProfileEditableDetailsVwCntrlr
          seg.myProIdentify = pageSettings
        
        }
    }
    
    
    @IBAction func Settings_Page(_ back: UIStoryboardSegue){
    
    }
    
}
