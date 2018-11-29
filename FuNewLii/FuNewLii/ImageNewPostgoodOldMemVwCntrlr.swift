//
//  ImageNewPostgoodOldMemVwCntrlr.swift
//  FuNewLii
//
//  Created by codemac on 25/10/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class ImageNewPostgoodOldMemVwCntrlr: UIViewController,UITextViewDelegate,UITextFieldDelegate {
    @IBOutlet weak var ViewShadowForTitleField: UIView!
    @IBOutlet weak var ViewForMemoryContent: UIView!
    @IBOutlet weak var MemoryStoryTextView: UITextView!
    @IBOutlet weak var Title_TextField: UITextField!
   
    @IBOutlet weak var Done_PostNow_Bttn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MemoryStoryTextView.delegate = self
        MemoryStoryTextView.text = "Caption for Your Memories"
        MemoryStoryTextView.textColor = UIColor.gray
        Title_TextField.delegate = self
        
        Done_PostNow_Bttn.layer.cornerRadius = 2.0
        Title_TextField.ShadowForText_Field()
        MemoryStoryTextView.shadowForText_View()
      ViewForMemoryContent.shadowForCardView()
      ViewShadowForTitleField.shadowForCardView()
        Title_TextField.attributedPlaceholder = NSAttributedString(string:"#Title here ", attributes: [NSForegroundColorAttributeName: UIColor.gray])
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    var hashh : String?
    func textFieldDidBeginEditing(_ textField: UITextField) {
        hashh = "#"
        if Title_TextField.text == "" { Title_TextField.text = "\(hashh!)"+"\(Title_TextField.text!)"
        }
        
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if MemoryStoryTextView.textColor == UIColor.gray {
            MemoryStoryTextView.text = ""
            MemoryStoryTextView.textColor = UIColor.black
            
        }
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        if MemoryStoryTextView.text.isEmpty {
            MemoryStoryTextView.text = "Caption for Your Memories"
            MemoryStoryTextView.textColor = UIColor.gray
        }
    }
    
   /* myTextField.attributedPlaceholder = NSAttributedString(string: "placeholder text",
    attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])*/
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Done_PostNow_Bttn(_ sender: Any) {
    }

    @IBAction func FontStyleChoosingBttn(_ sender: UIButton) {
    
           // "Snell Roundhand"
         if sender.tag == 0 {
            Title_TextField.font = UIFont(name: "Grafiteg free", size: 20.0)
            MemoryStoryTextView.font = UIFont(name: "Grafiteg free", size: 20.0)
            
            sender.tag = 1
            print("first")
        }
        else if sender.tag == 1 {
            Title_TextField.font = UIFont(name: "Grestal Script Demo", size: 20.0)
            MemoryStoryTextView.font = UIFont(name: "Grestal Script Demo", size: 20.0)
            sender.tag = 2
            print("second")

        }
       
        else if sender.tag == 2 {
            Title_TextField.font = UIFont(name: "Snell Roundhand", size: 20.0)
            MemoryStoryTextView.font = UIFont(name: "Snell Roundhand", size: 20.0)
      sender.tag = 3
            print("3")

        }
         else if sender.tag == 3 {
            Title_TextField.font = UIFont(name: "Futura", size: 20.0)
            MemoryStoryTextView.font = UIFont(name: "Futura", size: 20.0)
            sender.tag = 4
            print("4")
            
         }
        else if sender.tag == 4 {
            Title_TextField.font = UIFont(name: "Helvetica neue", size: 17.0)
            MemoryStoryTextView.font = UIFont(name: "Helvetica neue", size: 17.0)
            
            sender.tag = 0
        
        }
    }
    
    var PageSelectIdentify : String?
    @IBAction func TagFirendsBttnClick(_ sender: Any) {
        
        PageSelectIdentify = "NewImagePostPage"
        performSegue(withIdentifier: "SelectTaggingFriends", sender: self)
    }
    @IBAction func CancelPostingBttn_Click(_ sender: Any) {
        //i have choose from exit controller,so i didn't write code here
          performSegue(withIdentifier: "MyPicsGoodOldMem", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SelectTaggingFriends"{
            let segg = segue.destination as! TagSelectFriendsVwCntrlr
            segg.pageidentifierTagPage = PageSelectIdentify!
        }
    }
    @IBAction func NewImagePost(_ back: UIStoryboardSegue){
  
    
    }
}
