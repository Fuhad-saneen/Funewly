//
//  TagSelectFriendsVwCntrlr.swift
//  FuNewLii
//
//  Created by codemac on 02/11/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class TagSelectFriendsVwCntrlr: UIViewController,UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var TitleForPage: UILabel!
    @IBOutlet weak var SelectSearchTableOutlet: UITableView!
    @IBOutlet weak var SearchBar_ForSelectFriend: UISearchBar!

    var pageidentifierTagPage : String?
    var select_index : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    override func viewWillAppear(_ animated: Bool) {
        if pageidentifierTagPage == "NewImagePostPage"{
        TitleForPage.text = "tag friends"
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TagSelectFriends", for: indexPath) as! TagSelectFrndsTabVwCell
        cell.Image_Of_User.ImageRounding()
        cell.Select_Unselect_Bttn.layer.cornerRadius = 5.0
        cell.Select_Unselect_Bttn.addTarget(self, action: #selector(select_Unselect(_:)), for: .touchUpInside)
        if select_index == indexPath.item {cell.contentView.layer.backgroundColor = greyf9f9f9Color }
        else {
        cell.contentView.layer.backgroundColor = UIColor.white.cgColor
        }
        return cell
    }
    
  //button for selecting func
    func select_Unselect(_ sender : UIButton)
    {
        if sender.tag == 0{
        sender.setTitle("REMOVE", for: .normal)
            sender.setTitleColor(UIColor.black, for: .normal)
            sender.backgroundColor = UIColor.white
            sender.layer.borderColor = UIColor.gray.cgColor
            sender.layer.borderWidth = 0.5
        sender.tag = 1
        }
        else if sender.tag == 1 {
        sender.setTitle("ADD", for: .normal)
            sender.setTitleColor(UIColor.white, for: .normal)
            sender.backgroundColor = UIColor.black
        sender.tag = 0
        }
    
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        select_index = indexPath.item
        SelectSearchTableOutlet.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BackBttnClick(_ sender: Any) {
       if pageidentifierTagPage == "NewImagePostPage"{
        performSegue(withIdentifier: "NewImagePost", sender: self)
        
    }
       else if pageidentifierTagPage == "CreateMemories"{
        performSegue(withIdentifier: "CreateMemory", sender: self)
        }

       else if pageidentifierTagPage == "FromStoryCreatePage"{
        performSegue(withIdentifier: "BacktoCreateStories", sender: self)
        }
}
}
