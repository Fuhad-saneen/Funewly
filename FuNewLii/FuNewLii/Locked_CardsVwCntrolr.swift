//
//  Lock'd_CardsVwCntrolr.swift
//  FuNewLii
//
//  Created by codemac on 19/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class Locked_CardsVwCntrolr: UIViewController,UITextViewDelegate {
    @IBOutlet weak var PostButton: UIButton!
    @IBOutlet weak var ViewForPostBttn: UIView!
    @IBOutlet weak var ViewForCard: UIView!
    @IBOutlet weak var Message_txtView: UITextView!
    
    @IBOutlet weak var FriendName_Textview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ViewForCard.layer.shadowColor = UIColor(red: 230/255 , green: 230/255 ,blue: 230/255 ,alpha : 1).cgColor
        ViewForCard.layer.shadowOffset = CGSize.init(width: 1, height: 1)
        ViewForCard.layer.shadowOpacity = 2
        
        Message_txtView.layer.borderWidth = 3
        Message_txtView.layer.borderColor = UIColor(red: 230/255 , green: 230/255 ,blue: 230/255 ,alpha : 1).cgColor
        Message_txtView.layer.cornerRadius = 10.0
        
        ViewForPostBttn.layer.shadowColor = UIColor(red: 230/255 , green: 230/255 ,blue: 230/255 ,alpha : 1).cgColor
        ViewForPostBttn.layer.shadowOffset = CGSize.init(width: 1, height: 1)
        ViewForPostBttn.layer.shadowOpacity = 2
        
        PostButton.layer.borderWidth = 1.0
        PostButton.layer.borderColor = UIColor(red: 127/255, green: 127/255, blue: 127/255,alpha : 1).cgColor
        
        FriendName_Textview.delegate = self
        FriendName_Textview.text = "add that person's name here"
        FriendName_Textview.textColor = UIColor.lightGray
        
        Message_txtView.delegate = self
        Message_txtView.text = "' This may be to your beloved teacher, freind, relative or a co-worker that you always want to let them know that you really loving them and missing them so much. Once they see their name and they want to know what you have written ,they will send you a request and you once you accepted the request, they can read this locked tells '"
        Message_txtView.textColor = UIColor.gray
        Message_txtView.textAlignment = NSTextAlignment.justified
        
        
        //        FriendName_Textview.layer.shadowColor = UIColor(red: 230/255 , green: 230/255 ,blue: 230/255 ,alpha : 1).cgColor
        //        FriendName_Textview.layer.shadowOffset = CGSize.init(width: 1, height: 1)
        //        FriendName_Textview.layer.shadowOpacity = 2
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        
        if textView == FriendName_Textview{
            if textView.textColor == UIColor.lightGray {
                textView.text = nil
                textView.textColor = UIColor.black
            }
        }else if textView == Message_txtView{
            if Message_txtView.textColor == UIColor.gray {
                Message_txtView.text = nil
                Message_txtView.textColor = UIColor.black
            }
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView == FriendName_Textview{
            if textView.text.isEmpty {
                textView.text = "add that person's name here"
                textView.textColor = UIColor.lightGray
            } }
        else if textView == Message_txtView{
            if Message_txtView.text.isEmpty {
                //                Message_txtView.text = "Write a Funniest and lovely first time thought or an unforgettable memory about your firend"
                Message_txtView.textColor = UIColor.black
                
                Message_txtView.textAlignment = NSTextAlignment.center
            }
        }
        
    }
    
    var LockTellIdentifier : String?
    @IBAction func ViewMyTells(_ sender: Any) {
        performSegue(withIdentifier: "ToCreateLockTells", sender: self)
        
    }
    @IBAction func TellsToMe_Clicked(_ sender: Any) {
        performSegue(withIdentifier: "TellsToMe", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToCreateLockTells"{
        let seg = segue.destination as! MyLockedTellsListVwCntroller
        seg.LockedTellSegueIdentifier = "FromCreateLockTells"
        
        }
//        else if segue.identifier == "TellsToMe"{
//            let seg = segue.destination as! TellsToMe_LockedVwCntrolr
//            seg.LockedTellSegueIdentifier = "FromCreateLockTells"
//    
//    
//        } 
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
}
    @IBAction func CreateLockedTells(_ LockTell: UIStoryboardSegue){
    
    
    }
    
}








