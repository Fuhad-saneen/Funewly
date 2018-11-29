//
//  FriendsPostVwCntrlr.swift
//  FuNewLii
//
//  Created by codemac on 17/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class FriendsPostVwCntrlr: UIViewController,UITableViewDataSource,UITableViewDelegate{
    @IBOutlet weak var tableOutlet: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
      /*  tableOutlet.estimatedRowHeight = 74
        tableOutlet.rowHeight = UITableViewAutomaticDimension*/
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendsPosts", for: indexPath) as! FriendsPostTabVwCell
        cell.image_OfPerson.ImageRounding()
        //cell.image_OfPerson.image =
        //cell.ImageOfStory.image =
        //cell.Story_Textview.text =
        cell.Like_Button.addTarget(self, action: #selector(likeButtonClicked), for: UIControlEvents.touchUpInside)
        
        
        return cell
    }
    
    func likeButtonClicked(sender : UIButton){
    
    sender.LikeBtnAnimation()
        if sender.tag == 0{
            sender.setImage(UIImage(named: "Liker2"), for: UIControlState.normal)
            sender.tag = 1
            print(sender.tag)
        }
        else if sender.tag == 1 {
            sender.setImage(UIImage(named: "Liker1"), for: UIControlState.normal)
            sender.tag = 0
            print(sender.tag)
        }

    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CommentsBtn_Click(_ sender: Any) {
        
        performSegue(withIdentifier: "toCommnts_FrndPosts", sender: self)
    }
    
    var CommentsPageIdentify = "FriendsPost_Page"

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCommnts_FrndPosts"{
        let seg = segue.destination as! CommentsVwCntroller
        seg.page_Identifier = CommentsPageIdentify
        } }
    
    var HomeUnwindChecking : String?
//    @IBAction func HomeBttn_Click(_ sender: UIButton) {
//        print(HomeUnwindChecking)
//        if HomeUnwindChecking! == "From_Home"{
//            performSegue(withIdentifier: "NewPostNavig", sender: self)
//        }
////        else{
////        performSegue(withIdentifier: "CommentUnwind", sender: self)
////        
////        }
//    }
    
    @IBAction func FriendsPost(_ bsck: UIStoryboardSegue){
    
    }
    
}
