//
//  CardsSent_RecieveVwCntrolr.swift
//  FuNewLii
//
//  Created by codemac-08i on 09/08/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class CardsSent_RecieveVwCntrolr: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var tableOutlet: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
//        tableOutlet.estimatedRowHeight = 74
//        tableOutlet.rowHeight = UITableViewAutomaticDimension
        
    }
    var CardPageIdentifier: String?
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardsSentReciv", for: indexPath) as! Cards_SentRecivTablVwCel
        //cell.Person_ProfName.text =
        cell.ViewForImageBorder.layer.cornerRadius = cell.ViewForImageBorder.layer.bounds.height/2
        cell.ViewForImageBorder.layer.borderColor = UIColor.gray.cgColor
        cell.ViewForImageBorder.layer.borderWidth = 0.5
        
        cell.Image_OfPerson.layer.cornerRadius = cell.Image_OfPerson.layer.bounds.height/2
        cell.LikeButton.addTarget(self, action: #selector(LikeButton_Clicked(_:)), for: UIControlEvents.touchUpInside)
        cell.CardMessage_Details.shadowForText_View()
       
       
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
            sender.tag = 0
            print(sender.tag)
        }
        
    }
    
    
    @IBAction func BackButton(_ sender: Any) {
        
        if CardPageIdentifier == "From_Home"{
            performSegue(withIdentifier: "NewPostNavig", sender: self)
        
        }
        else if CardPageIdentifier == "FromOtherPerson_Profile"{
            performSegue(withIdentifier: "OtherPersMainProfile", sender: self)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
