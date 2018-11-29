//
//  SettingAssistantVwCntrlr.swift
//  FuNewLii
//
//  Created by codemac on 03/10/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class SettingAssistantVwCntrlr: UIViewController,UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate {
    @IBOutlet weak var ViewFor_Hide_BlockUsers: UIView!
    @IBOutlet weak var Hide_Block_SrchBar: UISearchBar!
    @IBOutlet weak var ViewForBlockUsers: UIView!
    @IBOutlet weak var BlockUsersSearchBar: UISearchBar!
    @IBOutlet weak var TableForBlockUsers: UITableView!
    @IBOutlet weak var ViewForLanguageSet: UIView!
    
    var ButtonItemIdentifier : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BlockUsersSearchBar.showsCancelButton = true
        BlockUsersSearchBar.delegate = self
//        ViewForBlockUsers.isHidden = false
//        ViewForLanguageSet.isHidden = false
      
    
    }
    override func viewWillAppear(_ animated: Bool) {
       switch ButtonItemIdentifier!
       {
        case "Block_ProfileCreation" :
            
            ViewForBlockUsers.isHidden = false
            ViewForLanguageSet.isHidden = true
            ViewFor_Hide_BlockUsers.isHidden = true
        break
        case "Language_Change" :
            ViewForLanguageSet.isHidden = false
            ViewForBlockUsers.isHidden = true
            ViewFor_Hide_BlockUsers.isHidden = true
        break
       case "HideAndBlockUsers" :
            ViewFor_Hide_BlockUsers.isHidden = false
            ViewForBlockUsers.isHidden = true
            ViewForLanguageSet.isHidden = true
        break
       default :
            print("nothing")
        }
    }

    
// Search Bar delegate functions
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Editing started, do searching and filtering code here..")
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        
        BlockUsersSearchBar.text = ""
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == TableForBlockUsers {
        return 15
        }
        else /*ButtonItemIdentifier == "HideAndBlockUsers"*/
        {
        return 15
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == TableForBlockUsers{
        let cell = tableView.dequeueReusableCell(withIdentifier: "BlockUsersTable", for: indexPath) as! BlockUsersSettingsTabVwCel
        cell.Image_Of_User.ImageRounding()
        cell.Block_Unblock_Bttn.layer.cornerRadius = 5.0
        
        cell.Block_Unblock_Bttn.layer.borderColor = UIColor.lightGray.cgColor
        cell.Block_Unblock_Bttn.layer.borderWidth = 0.5
        cell.Block_Unblock_Bttn.addTarget(self, action: #selector(blockbuttonClicked(_:)), for: UIControlEvents.touchUpInside)
        //first ,ie: befor searching done table should load with list of friends of me
        
        
        return cell
        }
        else /*Hide and Block users*/
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HideOrBlockUsers", for: indexPath) as! HideOrBlockUsersTabVwCell
            cell.ImageOfUsers.ImageRounding()
            cell.HideOrBlock_Bttn.layer.cornerRadius = 5.0
            
            cell.HideOrBlock_Bttn.layer.borderColor = UIColor.lightGray.cgColor
            cell.HideOrBlock_Bttn.layer.borderWidth = 0.5
            cell.HideOrBlock_Bttn.addTarget(self, action: #selector(Hide_And_blockbttnClicked(_:)), for: .touchUpInside)
            //first ,ie: befor searching done table should load with list of friends of me
            
            
            return cell

        
        }
    }
    
    
    func blockbuttonClicked(_ sender: UIButton){
        if sender.tag == 0{
        
            sender.setTitle("Unblock", for: .normal)
            
            sender.setTitleColor(UIColor.black, for: .normal)
            sender.backgroundColor = UIColor.white
            sender.tag = 1
        }
        else if sender.tag == 1{
        sender.setTitle("Block", for: .normal)
            sender.backgroundColor = UIColor.black
            sender.setTitleColor(UIColor.white, for: .normal)
        sender.tag = 0
        }
    
    }
    
    func Hide_And_blockbttnClicked(_ sender: UIButton){
        if sender.tag == 0{
            
            sender.setTitle("Unblock", for: .normal)
            
            sender.setTitleColor(UIColor.black, for: .normal)
            sender.backgroundColor = UIColor.white
            sender.tag = 1
        }
        else if sender.tag == 1{
            sender.setTitle("Hide / Block", for: .normal)
            sender.backgroundColor = UIColor.black
            sender.setTitleColor(UIColor.white, for: .normal)
            sender.tag = 0
        }
        
    }
    
    
 // Code For Language Change table
    @IBAction func English(_ sender: Any) {
        self.changeToLanguage("en")
    }
   
    @IBAction func German(_ sender: Any) {
        self.changeToLanguage("de")
    }
    
    @IBAction func Arabi(_ sender: Any) {
        self.changeToLanguage("ar")
    }

    @IBAction func BackBtt_Click(_ sender: Any) {
        
    }
     private func changeToLanguage(_ langCode: String){
        if Bundle.main.preferredLocalizations.first != langCode{
        let confirmAlertCtrl = UIAlertController(title: NSLocalizedString("restartTitle", comment: ""), message: NSLocalizedString("restart", comment: ""), preferredStyle: .alert)
            
         let confirmAction = UIAlertAction(title: NSLocalizedString("close", comment: ""), style: .destructive ) { _ in
            UserDefaults.standard.set([langCode], forKey: "AppleLanguages")
            UserDefaults.standard.synchronize()
            exit(EXIT_SUCCESS)
         }
            confirmAlertCtrl.addAction(confirmAction)
            
            let cancelAction = UIAlertAction(title: NSLocalizedString("cancel", comment: ""), style: .cancel, handler: nil)
            confirmAlertCtrl.addAction(cancelAction)
            present(confirmAlertCtrl, animated:  true, completion: nil)
        }
    
    }
    
    @IBAction func BackButtonClick(_ sender: Any) {
        shouldPerformSegue(withIdentifier: "Settings_Page", sender: self)
        
    }
   }
