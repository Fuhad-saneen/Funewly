//
//  HomepageFetchVwController.swift
//  Fu_blii
//
//  Created by codemac-08i on 18/07/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit
import Alamofire

class HomepageFetchVwController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegateFlowLayout {
 
    @IBOutlet weak var MainCollectionViewForHome: UICollectionView!
    @IBOutlet weak var Cell_Nill_OKBttn: UIButton!
    @IBOutlet weak var Cell_NillShowButton: UIButton!
    @IBOutlet var ViewForNillCellButtons: UIView!
    @IBOutlet weak var AllCards_Viewing: UIButton!
 
 
    @IBOutlet weak var MemoriesCreateBttn: UIButton!
    @IBOutlet weak var PostsOfMyFriends: UIButton!
    @IBOutlet weak var MemoriesToMe: UIButton!
    @IBOutlet weak var FirstMeetStoryToMe: UIButton!
    
    @IBOutlet weak var LockedTellsNew: UIButton!
   
  
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    // Top 5 recent viewed image buttons
        
       //UIColor.gray.cgColor
        //SentCardsBtn.gradientColorSet()
      
        LockedTellsNew.ButtonRounding()
        // View2 image buttons
       
        FirstMeetStoryToMe.ButtonRounding()
        MemoriesToMe.ButtonRounding()
        PostsOfMyFriends.ButtonRounding()
        MemoriesCreateBttn.ButtonRounding()
        
        FirstMeetStoryToMe.shadowForButton()
        MemoriesToMe.shadowForButton()
        PostsOfMyFriends.shadowForButton()
        MemoriesCreateBttn.shadowForButton()
        LockedTellsNew.shadowForButton()
        

        
        
        // Cell layout
     /*  var layout = self.MostSearched_collctionCell.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsetsMake(0, 5, 0, 5)
        layout.minimumInteritemSpacing = 5*/
      
       /* layout.itemSize = CGSize(width: (self.MostSearched_collctionCell.frame.size.width - 20)/2, height: self.MostSearched_collctionCell.frame.size.height/2.5)*/
        // Nill Showing ViewItems for Cells
        
        
        ViewForNillCellButtons.ShadowForView()
        ViewForNillCellButtons.layer.cornerRadius = 15.0
        Cell_Nill_OKBttn.ButtonOvelShape()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        view.addSubview(ViewForNillCellButtons)
        ViewForNillCellButtons.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if CheckInternet.Connection(){
            
            // reloading app content code here
            //self.Alert(Message: "Connected")
            print("NetWork connected")
            
            
        }
            
        else{
            
            self.Alert(Message: "Your Device is not connected with internet")
        }
      
        
    }
    
    func Alert (Message: String){
        
        let alert = UIAlertController(title: "Alert", message: Message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Main Collection View's Delegate Functions
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: MainCollectionViewForHome.frame.width, height: MainCollectionViewForHome.frame.height)
    }
    
    //TableView functions in different views/cells
    var memoriesTable1 : UITableView?
    var cardsTable2 : UITableView?
    var ProfilesMostSearched: UICollectionView?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if memoriesTable1 != nil{
        if tableView == memoriesTable1! {
            return 10
        }else{
            return 0
            }
        }
        else {
            return 10
        }
     }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == memoriesTable1! {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemoriesTableHome", for: indexPath) as! MemoriesHomeTableVwCell
            cell.PostedImageMem.layer.cornerRadius = 10
            cell.PostedUserImage_Mem.ImageRounding()
            cell.ViewForManShadowMem.shadowForCardView()
        return cell
        }
        else
        {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardstableHomeFetch", for: indexPath) as! CardsHomeTableViewCell
            cell.ViewForMainCard_Cards.shadowForCardView()
            cell.ViewForImageBorder_Cards.ViewRoundingfunc()
            cell.PostedUserImage_Cards.ImageRounding()
            return cell
        }
    }
    
    //Main Collection view Functions
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        if ProfilesMostSearched != nil{
        if collectionView == ProfilesMostSearched!{
        return 1
        }
        else{
            return 0
        }
        }
        else
        {
            return 4
        }
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if ProfilesMostSearched != nil{
        if collectionView == ProfilesMostSearched!{
       return 1
            }else{ return 0}
        }
        else {
        return 1
       }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemoriesCellHome", for: indexPath) as! Home1MainMemoriesCllctionCell
            memoriesTable1 = cell.MemoriesTableView_Mem
            cell.MemoriesTableView_Mem.reloadData()
            cell.Yours_Fv_TopButton.ButtonRounding()
            cell.Image1_Top_CardSent.ButtonRounding()
            cell.Image2_Top_CardSent.ButtonRounding()
            cell.Image3_Top_CardSent.ButtonRounding()
            cell.SentNewCardTopBttn.ButtonRounding()
            cell.SentNewCardTopBttn.layer.borderColor = UIColor.black.cgColor
            cell.SentNewCardTopBttn.layer.borderWidth = 0.5
            
            return cell
        }
        else if indexPath.section == 1{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardsCellHome", for: indexPath) as! Home2MainCardsCllctionCell
            cardsTable2 = cell.HomeCardsTableView2
            cell.HomeCardsTableView2.reloadData()
        return cell
        }
        else if indexPath.section == 2{
            if collectionView == MainCollectionViewForHome {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProfileCollectionCellsHome", for: indexPath) as! Home3MainProfilesCllctionCell
            ProfilesMostSearched = cell.MostSearched_collctionCell
            cell.MostSearched_collctionCell.reloadData()
            
        return cell
            }else if collectionView == ProfilesMostSearched!{
                    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Mostsearched_collection", for: indexPath) as! HomeMostSearchdCollctionVwCell
                    cell.Name_person.text = "FUHAD SANEEN"
                    cell.image_person.image = UIImage(named: "ab")
                    cell.image_person.ImageRounding()
                    cell.ShadowForCell()
                    cell.layer.cornerRadius = 15.0
                    return cell
            }
            else {
            return UICollectionViewCell()
            }
        }
       else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendsPosts4", for: indexPath) as! Home4MainFrndsPostsCllctionCell
        
        cell.buttonNothing.ButtonRounding()
    
    return cell
    }
    }
    var nim = Int()
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        nim = indexPath.row
        performSegue(withIdentifier: "ProfilWhenCollDidSelect", sender: self)
        
    }
    

    /* In this function xhecking and alerting if there is not any cards recieved recently, otherwise show the recent card sent persons images.or card replied persons image */
    @IBAction func Top_Cell_CardButtons(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            ViewForNillCellButtons.isHidden = false
        case 1:
            ViewForNillCellButtons.isHidden = false
        case 2:
            ViewForNillCellButtons.isHidden = false
        default:
            break
        }
        
    }
    @IBAction func Cell_NillView_OKbttn(_ sender: Any) {
        ViewForNillCellButtons.isHidden = true
    }
    
    
  
    @IBAction func Searching_buttonClicked(_ sender: Any) {
        performSegue(withIdentifier: "Searching_page", sender: self)
        }
    
   
        
    
    @IBAction func SentCardsClicked(_ sender: Any) {
        performSegue(withIdentifier: "ToCardsPage", sender: self)
    }
    
    @IBAction func RecievedCardsClick(_ sender: Any) {
        performSegue(withIdentifier: "ToCardsPage", sender: self)
    }
    @IBAction func Notification_buttonClicked(_ sender: Any) {
        performSegue(withIdentifier: "Notification_request_page", sender: self)
    }
 
    @IBAction func StarButton_Clickd_forNewPost(_ sender: Any) {
        
        performSegue(withIdentifier: "NavigationToCreatePost", sender: self)
        
    }
    @IBAction func My_Profile_ofPublished_button(_ sender: Any) {
        performSegue(withIdentifier: "MyProfile_published_post", sender: self)
        
    }
    @IBAction func GoodOldMem_PhotosCards(_ sender: Any) {
        performSegue(withIdentifier: "ThrowBack_Gallery", sender: self)
        
    }
    
    
    @IBAction func PostsOfMyFriends_Memrys(_ sender: Any) {
        performSegue(withIdentifier: "Posts_OfFriends", sender: self)
        
    }
    @IBAction func MemoriesCreateNavig(_ sender: UIButton) {
        
        performSegue(withIdentifier: "MemoriesCreateNavig", sender: self)
        
        
    }
    


    
    @IBAction func DiamondForHowToUseBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "HowToUseGuide", sender: self)
        
        
    }
    @IBAction func MyPhotosGoodOldMems(_ sender: Any) {
        performSegue(withIdentifier: "MyPhotosGoodOldMem", sender: self)
    }
    
    @IBAction func MyStories_PageBttn(_ sender: UIButton) {
        
        performSegue(withIdentifier: "StoriesRecieved", sender: self)
        sender.LikeBtnAnimation()
    }
    
    @IBAction func LockedTellsClick(_ sender: UIButton){
        performSegue(withIdentifier: "LockedTells", sender: self)
    
    }
    
    @IBAction func MyMemories_Page(_ sender: UIButton) {
    
    
        performSegue(withIdentifier: "Recieved_Memories", sender: self)
        sender.LikeBtnAnimation()
    }
   
   
    @IBAction func NewPostNavig(_ BackFromNavig : UIStoryboardSegue){
        
       
    }
    
    var identify = "From_Home"
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Posts_OfFriends"{
        let seg = segue.destination as! FriendsPostVwCntrlr
         seg.HomeUnwindChecking = identify
        }
       else if segue.identifier == "ProfilWhenCollDidSelect"{
            let seg = segue.destination as! OtherPersons_profileViewCntroller
            seg.PageIdentifier = identify
        }
        
        else if segue.identifier == "ToCardsPage"{
        let seg = segue.destination as! CardsSent_RecieveVwCntrolr
            seg.CardPageIdentifier = identify
        
        }
    }
    
    
}
