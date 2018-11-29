//
//  MemoryStoriesVwCntrlr.swift
//  FuNewLii
//
//  Created by codemac-08i on 07/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class MemoriesMineVwCntrlr: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableOutlet: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
       /* tableOutlet.estimatedRowHeight = 71
        tableOutlet.rowHeight = UITableViewAutomaticDimension */
 
    }

    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyMemoriesTable", for: indexPath) as! MyMemoriesTabVwCell
      //  cell.TitleForMemories.text =
        //cell.MemoriesTextview.text =
        //cell.CountsOfLikelabel.text =
        cell.ViewForMainShadowCard.shadowForCardView()
        cell.Image_Content.image = UIImage(named: "dubai2")
        cell.Like_Button.setImage(UIImage(named: "Liker1"), for: UIControlState.normal)
        cell.Like_Button.addTarget(self, action: #selector(likebuttonclick(_:)), for: UIControlEvents.touchUpInside)
        //LikeClickdIdentify = 1
        return cell
        }
    
    //var LikeClickdIdentify = 1
    func likebuttonclick(_ sender : UIButton){
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
    
    @IBAction func CommentsBtnClicked(_ sender: Any) {
        performSegue(withIdentifier: "Comments_Page", sender: self)
    }
    var CommentsPageIdentify = "Memories_Page"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Comments_Page"{
        let seg = segue.destination as! CommentsVwCntroller
        seg.page_Identifier = CommentsPageIdentify
        } }

    var segueIdentify : String?
    @IBAction func Back_Button(_ sender: Any) {
        if segueIdentify == "CreateMemories"{
        performSegue(withIdentifier: "CreateMemory", sender: self)
    
        }
        else if segueIdentify == "FromOtherPerson_Profile"{
        performSegue(withIdentifier: "OtherPersMainProfile", sender: self)
        }
        
    }
    
    
    @IBAction func MemoriesMine(_ back: UIStoryboardSegue){
    
    }

}
