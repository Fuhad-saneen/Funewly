//
//  CommentsVwCntroller.swift
//  FuNewLii
//
//  Created by codemac-08i on 05/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class CommentsVwCntroller: UIViewController,UITableViewDelegate,UITableViewDataSource,UITextViewDelegate{
    @IBOutlet weak var viewforReplyofCmnts: UIView!
    @IBOutlet weak var textviewForReplyCmnts:UITextView!
    @IBOutlet weak var BackButton: UIButton!
    @IBOutlet weak var tableOutlet: UITableView!
    @IBOutlet weak var sendbtnForReplyCmnts: UIButton!
    @IBOutlet weak var SendforMainComment: UIButton!
    @IBOutlet weak var CommentTypingTxtview: UITextView!

    
    var page_Identifier : String?
    var effect = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      /*  tableOutlet.estimatedRowHeight = 167
        tableOutlet.rowHeight = UITableViewAutomaticDimension */
        
        viewforReplyofCmnts.isHidden = true

        textviewForReplyCmnts.layer.borderWidth = 0.5
        textviewForReplyCmnts.layer.borderColor = UIColor(red: 123/255, green: 123/255, blue: 123/255, alpha: 1).cgColor
        viewforReplyofCmnts.layer.borderColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1).cgColor
        viewforReplyofCmnts.ShadowForView()
        viewforReplyofCmnts.layer.cornerRadius = 11.0
        
 

        CommentTypingTxtview.layer.cornerRadius = CommentTypingTxtview.frame.height/2
        CommentTypingTxtview.layer.borderWidth = 0.5
        CommentTypingTxtview.layer.borderColor = UIColor(red: 204/255, green: 204/255, blue: 204/255, alpha: 1).cgColor
        
        textviewForReplyCmnts.delegate = self
        textviewForReplyCmnts.text = "write your reply here"
        textviewForReplyCmnts.textColor = UIColor.gray
        
        
        CommentTypingTxtview.delegate = self
        CommentTypingTxtview.text = "Type Comment"
        CommentTypingTxtview.textColor = UIColor.lightGray
    }
    

    
    
    
    @IBOutlet weak var botcon: NSLayoutConstraint!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        self.tableOutlet.endEditing(true)
        CommentTypingTxtview.text = "Type Comment"
        CommentTypingTxtview.textColor = UIColor.lightGray
    }
    
    
    
    func ReplyForCommntClick()
    {
            self.viewforReplyofCmnts.isHidden = false
        BackButton.isUserInteractionEnabled = false
        tableOutlet.isUserInteractionEnabled = false
        CommentTypingTxtview.isUserInteractionEnabled = false
        SendforMainComment.isUserInteractionEnabled
         = false
        textviewForReplyCmnts.text = "write your reply here"
        textviewForReplyCmnts.textColor = UIColor.gray
     
  
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView == textviewForReplyCmnts{
         if textView.textColor == UIColor.gray{
            textView.text = nil
            textView.textColor = UIColor.black
            
            }
        }
        else if textView == CommentTypingTxtview{
            if textView.textColor == UIColor.lightGray {
                self.isEditing = true
            textView.text = nil
                textView.textColor = UIColor.black
                
            }
        }
      }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView == textviewForReplyCmnts{
            if textviewForReplyCmnts.text.isEmpty{
                textviewForReplyCmnts.text = "write your reply here"
                textviewForReplyCmnts.textColor = UIColor.gray
            }
        }
        else if textView == CommentTypingTxtview{
            if self.CommentTypingTxtview.text.isEmpty{
            textView.text = "Type Comment"
                textView.textColor = UIColor.lightGray
            
            }
            }
        else if view.endEditing(true) {
        
            CommentTypingTxtview.text = "Type Comment"
            CommentTypingTxtview.textColor = UIColor.lightGray
        }
        else if CommentTypingTxtview != nil{
            CommentTypingTxtview.text = "Type Comment"
            CommentTypingTxtview.textColor = UIColor.lightGray
        }
        
        }
    
    
    @IBAction func Cancel_Reply(_ sender: Any) {
        
        viewforReplyofCmnts.isHidden = true
        CommentTypingTxtview.isUserInteractionEnabled = true
        SendforMainComment.isUserInteractionEnabled = true
        BackButton.isUserInteractionEnabled = true
        tableOutlet.isUserInteractionEnabled = true
    
        //textviewForReplyCmnts.textColor = UIColor.gray
        //textviewForReplyCmnts.text = "write your reply here"
        
          textviewForReplyCmnts.endEditing(true)
       
            textviewForReplyCmnts.text = nil
        
        }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CommentsForMemories", for: indexPath) as! CommentsForMemriesTableVwCell
        
        cell.ImageOf_sender.layer.cornerRadius = cell.ImageOf_sender.layer.bounds.height/2
        cell.ImageOf_sender.image = UIImage(named: "ab")
        cell.NameOf_sender.text = "saurav shylesh"
        cell.ReplyBtnClicked.addTarget(self, action: #selector(ReplyForCommntClick), for: UIControlEvents.touchUpInside)
        cell.ReplyBtnClicked.ButtonOvelShape()
        cell.likeforCommentBtn.addTarget(self, action: #selector(LikeButton_Clicked(_:)), for: UIControlEvents.touchUpInside)
        
        return cell
    }

    
    var LikeCount = 1  /* Like Function*/
    @objc func LikeButton_Clicked(_ sender: UIButton) {
        sender.LikeBtnAnimation()
        if LikeCount == 1{
            
            sender.setImage(UIImage(named: "Liker2"), for: .normal)
            LikeCount = 0
            print(sender.tag)
        } else if LikeCount == 0{
            LikeCount = 1
            
            sender.setImage(UIImage(named: "Liker1"), for: .normal)
            print(sender.tag)
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BackBttn_clicked(_ sender: Any) {
        
        if page_Identifier == "FriendsPost_Page"{
            performSegue(withIdentifier: "FriendsPost", sender: self)
        }
        else if page_Identifier == "Stories_page"{
        
        performSegue(withIdentifier: "StoriesMine", sender: self)
        }
        
        else if page_Identifier == "Memories_Page"{
            performSegue(withIdentifier:"MemoriesMine" , sender: self)
        }
        else if page_Identifier == "FromRecievdMemory"{
        performSegue(withIdentifier: "MyRecievedMemorys", sender: self)
        
        }
        else if page_Identifier == "Stories_recieved"{
            performSegue(withIdentifier: "RecivdStories", sender: self)
            
        }
    }

    @IBAction func CommentUnwind(_ unw: UIStoryboardSegue){
    
    }

}
