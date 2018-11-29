//
//  FriendsViewController.swift
//  FuNewLii
//
//  Created by codemac on 25/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class FriendsMineVwControler: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var TitleLabel_Of_Page: UILabel!
    @IBOutlet weak var ViewFor_InstaFb: UIView!

    var followPageID : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if followPageID == "FromCreatedPosterPage"{
        ViewFor_InstaFb.isHidden = false
        TitleLabel_Of_Page.text = "Follow Friends"
            
        } else {
        ViewFor_InstaFb.isHidden = true
            TitleLabel_Of_Page.text = "Friends"
        }
        
        }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsMine", for: indexPath) as! FriendsMineTabVwCell
        cell.Image_Person.ImageRounding()
       
    //cell.Add_FriendBttn.tag = indexPath.item
        //cell.Image_Person.image = UIImage(
        //cell.Name_Person.text =
        cell.Add_FriendBttn.layer.cornerRadius = 5.0
        cell.Add_FriendBttn.setTitle("Follow", for: .normal)
        cell.Add_FriendBttn.addTarget(self, action: #selector(add_Friend_Click(_ :)), for: UIControlEvents.touchUpInside)
       
        return cell
    }
    
    var FriendCheck : Int?
   @objc func add_Friend_Click(_ sender:UIButton){
    
    FriendCheck = sender.tag
    if sender.tag == 0{
    
        sender.setTitle("Following", for: UIControlState.normal)
        sender.layer.backgroundColor = UIColor.white.cgColor
        sender.setTitleColor(UIColor.black, for: .normal)
        sender.followBttnBorder()
        sender.tag = 1
        FriendCheck = sender.tag
    }
    else if sender.tag == 1{
       
       
        sender.setTitle("Follow", for: UIControlState.normal)
        sender.layer.backgroundColor = UIColor.black.cgColor
        sender.setTitleColor(UIColor.white, for: .normal)
         sender.tag = 0
        FriendCheck = sender.tag
        
    }
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

   

}
