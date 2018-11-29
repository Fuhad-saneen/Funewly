//
//  MemoriesMineVwCntroler.swift
//  FuNewLii
//
//  Created by codemac-08i on 28/08/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class StoriesMineVwCntroler: UIViewController,UITableViewDelegate,UITableViewDataSource,UITextViewDelegate {
    @IBOutlet weak var tablee: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

     /*   tablee.estimatedRowHeight = 74
        tablee.rowHeight = UITableViewAutomaticDimension
    */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
 
  
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyStoriesTable", for: indexPath) as! MyStoriesTableVwCell
        //cell.Profile_Name.text =
        //cell.Memories_TextView.text =
        //cell.LikeCounts.text =
        //        cell.Like_Button.setImage(UIImage(named: "Liker1"), for: UIControlState.normal)
        cell.Image_Of_Person.image = UIImage(named: "dubai3")
        cell.Image_Of_Person.ImageRounding()
        cell.ViewForMainShadow.shadowForCardView()
        cell.Like_Button.addTarget(self, action: #selector(likebuttonclick(_:)), for: UIControlEvents.touchUpInside)
       // cell.Like_Button.tag = indexPath.item
    
        return cell
    }
    //var LikeClickdIdentify = 2
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
        
        //self.selectedButtonsArray.addObject(indexpath.row)
    }
    
    

    @IBAction func CommentsBttn_Click(_ sender: Any) {
        performSegue(withIdentifier:"Comments_Page", sender: self)
    }
    
    var identifier : String?
    var CommentsPageIdentify = "Stories_page"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "Comments_Page"{
        let seg = segue.destination as! CommentsVwCntroller
        seg.page_Identifier = CommentsPageIdentify
        } }

    @IBAction func Back_button(_ sender: Any) {
        if identifier == "FromStoryCreatePage"{
        performSegue(withIdentifier: "BacktoCreateStories", sender: self)
        
        }
        else if identifier == "FromOtherPerson_Profile"{
        performSegue(withIdentifier: "OtherPersMainProfile", sender: self)
        
        }
    }
    
    
    
    @IBAction func StoriesMine(_ back: UIStoryboardSegue){
    
    }
    
    
    
  }
