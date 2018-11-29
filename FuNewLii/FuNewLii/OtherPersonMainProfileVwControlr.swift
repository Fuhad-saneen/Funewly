//
//  OtherPersonMainProfileVwControlr.swift
//  Fu_blii
//
//  Created by codemac-08i on 18/07/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class OtherPersonMainProfileVwControlr: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var BackButton: UIButton!
   
    @IBOutlet weak var Memories_btn: UIButton!
    @IBOutlet weak var FirstImpressions_btn: UIButton!
    @IBOutlet weak var tableOutlet_Name: UITableView!
    @IBOutlet weak var CardsRecieved_button: UIButton!
    @IBOutlet weak var CardsSend: UIButton!
    @IBOutlet weak var PersonProfImage: imgLabelDesign!
    @IBOutlet weak var PersonProfileName: UILabel!
    @IBOutlet weak var PersnIDcode: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
       CardsSend.layer.borderColor = GreenSarahColor
        CardsSend.layer.borderWidth = 0.5
        CardsSend.layer.cornerRadius = 0.0
        
        CardsRecieved_button.layer.borderColor = PurpleMainColor
        CardsRecieved_button.layer.borderWidth = 0.5
        CardsRecieved_button.layer.cornerRadius = 0.0
//        
//        FirstImpressions_btn.layer.borderColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1).cgColor
//        FirstImpressions_btn.layer.borderWidth = 0.5
//        FirstImpressions_btn.layer.cornerRadius = 15.0
//     
//        
//        Memories_btn.layer.borderColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1).cgColor
//        Memories_btn.layer.borderWidth = 0.5
//        Memories_btn.layer.cornerRadius = 15.0
        
        PersonProfImage.ImageRounding()
        
        
       
   
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "otherPrsnMainProfile", for: indexPath) as! OtherPersnMainVwTableVwCel
        // cell.GuestPersnProflName.text =
        cell.GuestPrsnImage.image = UIImage(named: "James_Bond")
        cell.GuestPrsnImage.layer.cornerRadius = 10.0
        //cell.DescriptionDetailsGuest.text =
        //cell.Time_agoLabel.text =
        //cell.Like_countLabel.text =
        cell.LikeSymbol.image = UIImage(named: "like-3")
        
        return cell
    }
    
    var nim = Int()
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nim = indexPath.row
        performSegue(withIdentifier: "profilesCreatedbyMe", sender: self)
    }
    
//    var nim = Int()
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        nim = indexPath.row
//        performSegue(withIdentifier: "ProfilWhenCollDidSelect", sender: self)
//        
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
    
   
    @IBAction func CardsSent_Clicked(_ sender: Any) {
        performSegue(withIdentifier: "ToCardsSentRecv", sender: self )
    
    }
    
  
    @IBAction func CardsRecivd_Clicked(_ sender: Any) {
    
        performSegue(withIdentifier: "ToCardsSentRecv", sender: self)
    }
    @IBAction func FirstMeetingstories(_ sender: Any) {
        performSegue(withIdentifier: "ToStoriesOfOthers", sender: self)
    }
    @IBAction func MemoriesOfOthersBtn(_ sender: Any) {
        
        performSegue(withIdentifier: "ToMemoriesOfOthers", sender: self)
    }
    
    var LockedTellIdentifier : String?
    @IBAction func Locked_Tells_OfGuest(_ sender: Any) {
        performSegue(withIdentifier:"FromProfileOfOthers", sender: self)
        
    }
    @IBAction func notifi(_ sender: UIButton) {
        performSegue(withIdentifier: "CommentUnwind" , sender
            : self)
    }
    @IBAction func FriendBttn_Click(_ sender: Any) {
        
        performSegue(withIdentifier: "FirendsPage", sender: self)
        
    }
    
    @IBAction func BackBttn_Click(_ sender: Any) {
        if ProfilePageSegueIdentify == "FromMyPublishedPost"{
            performSegue(withIdentifier: "BackToMyPosts", sender: self)
        }
        else if ProfilePageSegueIdentify == "FromOtherProfileView"{
            performSegue(withIdentifier: "BackToOtherPerson", sender: self)
        }
        else if  ProfilePageSegueIdentify == "FromListOfSerchedPerson"{
            performSegue(withIdentifier: "BackFromOtherPrsn", sender: self)
        
        }
        else if  ProfilePageSegueIdentify == "FromMyOwnProfile"{
            performSegue(withIdentifier: "backToMyOwnBio", sender: self)
            
        }

        
    }
    var ProfilePageSegueIdentify: String?
    
    var PerformIdentifier = "FromOtherPerson_Profile"
    
    @IBAction func OtherPersMainProfile(_ Profile: UIStoryboardSegue){
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FromProfileOfOthers"{
        let seg = segue.destination as! MyLockedTellsListVwCntroller
            seg.LockedTellSegueIdentifier = PerformIdentifier
    
        }
        else if segue.identifier == "ToCardsSentRecv"{
        let seg = segue.destination as! CardsSent_RecieveVwCntrolr
            seg.CardPageIdentifier = PerformIdentifier
        
        }
        else if segue.identifier == "profilesCreatedbyMe"{
            let seg = segue.destination as! ProfilesCreatedByMeVwCntrlr
            seg.PageIdenty = PerformIdentifier
        }
            
        else if segue.identifier == "ToMemoriesOfOthers"{
        let seg = segue.destination as! MemoriesMineVwCntrlr
            seg.segueIdentify = PerformIdentifier
        }
        else if segue.identifier == "ToStoriesOfOthers"{
        let seg = segue.destination as! StoriesMineVwCntroler
            seg.identifier = PerformIdentifier
        
        }
    }
    
}
