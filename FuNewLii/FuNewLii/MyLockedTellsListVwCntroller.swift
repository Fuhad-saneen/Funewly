//
//  LockedTellsVwCntroller.swift
//  FuNewLii
//
//  Created by codemac on 20/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class MyLockedTellsListVwCntroller: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tablee: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
       /* tablee.estimatedRowHeight = 74
        tablee.rowHeight = UITableViewAutomaticDimension*/
        
    }
    var LockedTellSegueIdentifier : String?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "lockedTells", for: indexPath) as! LockedTellsTabVwCell
        //cell.Person_Name.text =
       cell.RequestUnlock_Btn.layer.cornerRadius = 5.0
    if LockedTellSegueIdentifier == "FromOtherPerson_Profile"{
        cell.LockedTell_MessageTexts.text = "Are you the person mentioned above, Then send a request to read it"
        cell.RequestUnlock_Btn.setTitle("Send a request", for: UIControlState.normal)
        cell.RequestUnlock_Btn.layer.borderWidth = 0.5
        cell.RequestUnlock_Btn.layer.borderColor = UIColor.gray.cgColor
        }
    else if LockedTellSegueIdentifier == "FromCreateLockTells"{
        cell.LockedTell_MessageTexts.text = "Here is showing the message i written" /*"the message i created for particular persons*/
        cell.RequestUnlock_Btn.setTitle("Accept the request", for: UIControlState.normal)
        
        
           }
        return cell
    }
    
    @IBAction func BackButton(_ back: UIButton){
        
        if LockedTellSegueIdentifier == "FromOtherPerson_Profile"{
            performSegue(withIdentifier: "OtherPersMainProfile", sender: self)
        }
        else if LockedTellSegueIdentifier == "FromCreateLockTells"{
            performSegue(withIdentifier:"CreateLockedTells" ,sender: self)
        
        }
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
