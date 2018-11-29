//
//  TellsToMe_LockedVwCntrolr.swift
//  FuNewLii
//
//  Created by codemac on 21/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class TellsToMe_LockedVwCntrolr: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableOutlet: UITableView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
           /* tableOutlet.estimatedRowHeight = 74
            tableOutlet.rowHeight = UITableViewAutomaticDimension */
            
        }
        var LockedTellSegueIdentifier : String?
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 15
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
            let cell = tableView.dequeueReusableCell(withIdentifier: "lockedTellsToMe", for: indexPath) as! TellsToMeTabVwCell
            //cell.Person_Name.text = send Person_Name
           cell.LockedTell_MessageTexts.text = "Here is the message i sent to you my friend"
           //comment button clicked and like code here
            cell.CommentReply_Btn.SettingsBtn_Design()
            cell.CommentReply_Btn.ButtonOvelShape()
            cell.Like_Bttn.addTarget(self, action: #selector(LikeButton_Clicked(_:)), for: UIControlEvents.touchUpInside)
            cell.ViewForMainShadow.shadowForCardView()
            //Reply Section
            cell.Image_RepliedPerson.ImageRounding()
            return cell
        }
    
    //var LikeCount = 1  /* Like Function*/
    @objc func LikeButton_Clicked(_ sender: UIButton) {
        sender.LikeBtnAnimation()
        if sender.tag == 0{
            
            sender.setImage(UIImage(named: "Liker2"), for: .normal)
            sender.tag = 1
            print(sender.tag)
        } else if sender.tag == 1{
    
            sender.setImage(UIImage(named: "Liker1"), for: .normal)
            sender.tag = 0
            print(sender.tag)
        }
        
    }
    
    @IBAction func BackButton_Click(_ sender: Any) {
        performSegue(withIdentifier: "CreateLockedTells", sender: self)
    }
}
