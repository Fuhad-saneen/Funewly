//
//  FirstTimeExprnceVwCntroler.swift
//  FuNewLii
//
//  Created by codemac-08i on 21/08/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class FirstTimeExprnceVwCntroler: UIViewController,UITextViewDelegate {
    @IBOutlet weak var tagFriend_Bttn: UIButton!
    @IBOutlet weak var SendPerson_Image: UIImageView!
    @IBOutlet weak var ViewForTitleShadow: UIView!
    @IBOutlet weak var PostButton: UIButton!
    
    @IBOutlet weak var ViewForCard: UIView!
    @IBOutlet weak var Experience_txtView: UITextView!

    @IBOutlet weak var Title_Textview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Title_Textview.delegate = self
        Experience_txtView.delegate = self
        ViewForCard.ShadowForView()
        ViewForCard.layer.cornerRadius = 20.0
        
        Experience_txtView.layer.borderWidth = 3
        Experience_txtView.layer.borderColor = UIColor(red: 230/255 , green: 230/255 ,blue: 230/255 ,alpha : 1).cgColor
//        Experience_txtView.layer.cornerRadius = 10.0
        //Title_Textview.shadowForText_View()
        Experience_txtView.shadowForText_View()
        //ViewForTitleShadow.shadowForCardView()
        //ViewForTitleShadow.ShadowForView()
        ViewForTitleShadow.ViewRoundingfunc()
        SendPerson_Image.ImageRounding()
        
        
        
        
       
        
        PostButton.layer.borderWidth = 1.0
        PostButton.layer.borderColor = UIColor(red: 127/255, green: 127/255, blue: 127/255,alpha : 1).cgColor
        
        Title_Textview.delegate = self
         Title_Textview.text = "ADD YOUR FRIEND'S NAME"
        Title_Textview.textColor = UIColor.lightGray
        
        Experience_txtView.delegate = self
        Experience_txtView.text =
        "Write a Funniest thought when you see your friend for the very first time, or an unforgettable memory about your friend.. Let him know what was in your mind when you see them for the first time.."
        Experience_txtView.textColor = UIColor.gray
        Experience_txtView.textAlignment = NSTextAlignment.justified

        
//        Title_Textview.layer.shadowColor = UIColor(red: 230/255 , green: 230/255 ,blue: 230/255 ,alpha : 1).cgColor
//        Title_Textview.layer.shadowOffset = CGSize.init(width: 1, height: 1)
//        Title_Textview.layer.shadowOpacity = 2
    

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        
        if textView == Title_Textview{
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
        }else if textView == Experience_txtView{
            if Experience_txtView.textColor == UIColor.gray {
                Experience_txtView.text = nil
                Experience_txtView.textColor = UIColor.black
            }
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView == Title_Textview{
        if textView.text.isEmpty {
            textView.text = "ADD YOUR FRIEND'S NAME"
            textView.textColor = UIColor.lightGray
            } }
        else if textView == Experience_txtView{
            if Experience_txtView.text.isEmpty {
//                Experience_txtView.text = "Write a Funniest and lovely first time thought or an unforgettable memory about your firend"
                Experience_txtView.textColor = UIColor.black
                
                Experience_txtView.textAlignment = NSTextAlignment.center
            }
        }
        
    }

    

//    func textViewDidChange(_ textView: UITextView){
//        if self.Title_Textview == textView{
//        print("Title_Textview")
//        }
//        else if self.Experience_txtView == textView{
//        print("Experience_txtView")
//        }
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func ViewMyMemoriesPage(_ sender: Any) {
        performSegue(withIdentifier: "MemoriesMine", sender: self)
        
    }
    
    var storyidentify = "FromStoryCreatePage"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MemoriesMine"{
        let seg = segue.destination as! StoriesMineVwCntroler
            seg.identifier = storyidentify
        
        }
        else if segue.identifier == "tag_Friend"{
        let segg = segue.destination as! TagSelectFriendsVwCntrlr
            segg.pageidentifierTagPage = storyidentify
        }
    }
    @IBAction func tagFriend_BttnClick(_ sender: Any) {
        performSegue(withIdentifier: "tag_Friend", sender: self)
        
    }
    
    
    @IBAction func BacktoCreateStories(_ BackfrmStory: UIStoryboardSegue){
    
    }
}

