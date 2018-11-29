//
//  RecievedStoriesVwCntrlr.swift
//  FuNewLii
//
//  Created by codemac-08i on 07/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class RecievedStoriesVwCntrlr: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var ViewForHomeBtnShadow: UIView!
    @IBOutlet weak var tableOutlet: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

       /* tableOutlet.estimatedRowHeight = 74
        tableOutlet.rowHeight = UITableViewAutomaticDimension */
        ViewForHomeBtnShadow.ViewRoundingfunc()
        ViewForHomeBtnShadow.ShadowForView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StoriesForMe", for: indexPath) as! RecievdStoriesTabVwCell
        
        cell.Like_Button.addTarget(self, action: #selector(LikeButton_Clicked(_:)), for: UIControlEvents.touchUpInside)
        cell.LastReplytxtview.layer.cornerRadius = 8.0
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
            print(sender.tag)
            sender.tag = 0
        }
        
    }
    
    @IBAction func CommentBttn_Click(_ sender: Any) {
        performSegue(withIdentifier: "Comments_RecvdStory", sender: self)
    }

    var pageSegueId = "Stories_recieved"
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Comments_RecvdStory"{
        let seg = segue.destination as! CommentsVwCntroller
            seg.page_Identifier = pageSegueId
        
        }
    }
    
 
    @IBAction func RecivdStories(_ Back: UIStoryboardSegue){
        
    }
    
    
}






