//
//  ImageViewPageVwCntrlr.swift
//  FuNewLii
//
//  Created by codemac on 17/10/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class PhotosCardsGoodOldMemVwCntlr: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate, UITableViewDelegate,UITableViewDataSource{
    @IBOutlet weak var MainTitleLabelForHeading: UILabel!
    @IBOutlet weak var AllCards_GoodOldMem: UITableView!
    @IBOutlet weak var FollowsuggestionsTable: UITableView!
    @IBOutlet weak var Photos_GoodOldMem_Cell: UICollectionView!
    @IBOutlet weak var followSuggestionBttn: UIButton!
    @IBOutlet weak var CardsAll_bttn: UIButton!
    @IBOutlet weak var gallery_Photos_Bttn: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Photos_GoodOldMem_Cell.isHidden = false
        AllCards_GoodOldMem.isHidden = true
        FollowsuggestionsTable.isHidden = true
        
        gallery_Photos_Bttn.ButtonTintColorViolet()
        MainTitleLabelForHeading.text = "Good old memories"
        
        gallery_Photos_Bttn.heavyButtonShadowWithOvelShape()
        CardsAll_bttn.heavyButtonShadowWithOvelShape()
        followSuggestionBttn.heavyButtonShadowWithOvelShape()
        
        //Cell Layout
        var layout = self.Photos_GoodOldMem_Cell.collectionViewLayout as! UICollectionViewFlowLayout
        //layout.sectionInset = UIEdgeInsetsMake(5, 6, 0, 6)
        layout.sectionInset = UIEdgeInsetsMake(5, 7, 0, 17)
//        UIEdgeInsetsMake(<#T##top: CGFloat##CGFloat#>, <#T##left: CGFloat##CGFloat#>, <#T##bottom: CGFloat##CGFloat#>, <#T##right: CGFloat##CGFloat#>)
        layout.minimumInteritemSpacing = 3
        
        layout.itemSize = CGSize(width: Photos_GoodOldMem_Cell.frame.width/2 - 20, height: Photos_GoodOldMem_Cell.frame.height / 2.7 )
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//Functions of Collection View For Photos
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 15
    }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photos_GoodOldMemries", for: indexPath) as! Photos_GoodOldMemCllctnCel
        cell.frame.size.width = self.view.frame.width / 2 - 12
        cell.layer.cornerRadius = 10.0
        cell.image_Posted.layer.cornerRadius = 5.0
        cell.Like_Button.addTarget(self, action: #selector(likeForPhotosClick(sender:)), for: UIControlEvents.touchUpInside)
        return cell
    }
    
    var StatusOfPhotosLiked : Int?
    func likeForPhotosClick(sender : UIButton){
        StatusOfPhotosLiked = sender.tag
        sender.buttonSelectionAnimation()
        if sender.tag == 0{
            sender.setImage(UIImage(named: "Liker2"), for: UIControlState.normal)
            sender.tag = 1
            StatusOfPhotosLiked = 1
            
            print(sender.tag)
        }
        else if sender.tag == 1 {
            sender.setImage(UIImage(named: "Liker1"), for: UIControlState.normal)
            sender.tag = 0
            print(sender.tag)
            StatusOfPhotosLiked = 0
        }
    }
    
    var PhotoCellselectedCheck : Bool?
    var cellindexpath : Int!
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ImageViewPage", sender: self)
       cellindexpath = indexPath.row
        
    }

    
//Functions of TableView For All bitCards
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == AllCards_GoodOldMem{
        return 15
        }
        else {
          return 15
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == AllCards_GoodOldMem{
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllCards_GoodOldMem", for: indexPath) as! AllCards_GoodOldMemTabCell
        /*cell.sendPerson_imageBtn.setImage(<#T##image: UIImage?##UIImage?#>, for: <#T##UIControlState#>)*/
            cell.sendPerson_imageBtn.ButtonRounding()
            cell.viewforSendButtonBorder.ViewRoundingfunc()
           // cell.ViewForTextViewBorder.cardTextViewBorder()
            cell.ViewForMainCard_Shadow.shadowForCardView()
            cell.Like_Button.addTarget(self, action: #selector(likeForCardsClick(sender:)), for: UIControlEvents.touchUpInside)
            return cell
            
        }  else  {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FollowSuggestionsTab", for: indexPath) as! FollowSugstionsGoodoldMemTabCel
            cell.ProfileImage_Person.ImageRounding()
            cell.Follolw_bttn.ButtonOvelShape()
            cell.ImageView1.layer.cornerRadius = 10.0
            cell.ImageView2.layer.cornerRadius = 10.0
            cell.ImageView3.layer.cornerRadius = 10.0
            cell.ViewForMainShadow_Body.shadowForCardView()
            cell.Follolw_bttn.addTarget(self, action: #selector(FollowButtonClicked(sender:)), for: .touchUpInside)
            
            return cell
        }
    }
    
    func likeForCardsClick(sender : UIButton){
        
        sender.buttonSelectionAnimation()
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
    
    func FollowButtonClicked(sender : UIButton){
        
        sender.buttonSelectionAnimation()
        if sender.tag == 0{
            sender.setTitle("Unfollow", for: UIControlState.normal)
            sender.tag = 1
            print(sender.tag)
        }
        else if sender.tag == 1 {
            sender.setTitle("Follow", for: .normal)
            sender.tag = 0
            print(sender.tag)
        }
        
        
    }


    
   
    @IBAction func Photos_Gallery_Bttn(_ sender: Any)
    {
       
    Photos_GoodOldMem_Cell.isHidden = false
    AllCards_GoodOldMem.isHidden = true
    FollowsuggestionsTable.isHidden = true
    gallery_Photos_Bttn.ButtonTintColorViolet()
    CardsAll_bttn.buttonTintColorBlack()
    followSuggestionBttn.buttonTintColorBlack()
    gallery_Photos_Bttn.buttonSelectionAnimation()
        MainTitleLabelForHeading.text = "Good old memories"
    }
    
    @IBAction func AllCards_Bttn(_ sender: Any) {
    Photos_GoodOldMem_Cell.isHidden = true
    AllCards_GoodOldMem.isHidden = false
    FollowsuggestionsTable.isHidden = true
    CardsAll_bttn.ButtonTintColorViolet()
    gallery_Photos_Bttn.buttonTintColorBlack()
    followSuggestionBttn.buttonTintColorBlack()
        CardsAll_bttn.buttonSelectionAnimation()
        MainTitleLabelForHeading.text = "Lylll Cards"
    }
    @IBAction func Follow_Suggestions_Bttn(_ sender: Any) {
    Photos_GoodOldMem_Cell.isHidden = true
    AllCards_GoodOldMem.isHidden = true
    FollowsuggestionsTable.isHidden = false
    followSuggestionBttn.ButtonTintColorViolet()
    gallery_Photos_Bttn.buttonTintColorBlack()
    CardsAll_bttn.buttonTintColorBlack()
    followSuggestionBttn.buttonSelectionAnimation()
        MainTitleLabelForHeading.text = "Follow New Friends"
        
    }
    
    @IBAction func GoodOldMemMainPage(_ Back: UIStoryboardSegue){
    
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ImageViewPage"{
        let seg = segue.destination as! ImageViewMainPageVwCntrlr
          seg.LikeStatusIdentifier = StatusOfPhotosLiked
          seg.photoCellSelectedChecking = PhotoCellselectedCheck
        }
    }
    
}
