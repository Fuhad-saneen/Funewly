//
//  MyPhotosGoodOldMemVwCntrlr.swift
//  FuNewLii
//
//  Created by codemac on 22/10/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class MyPhotosGoodOldMemVwCntrlr: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var CloseCommentsVwBttn: UIButton!
    @IBOutlet weak var ViewForComments: UIView!
    @IBOutlet weak var Table_ForMyPhotosCommentVw: UITableView!
    @IBOutlet weak var MyPhotoComment_inComments: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ViewForComments.isHidden = true
       
        CloseCommentsVwBttn.layer.borderColor = UIColor.white.cgColor
        CloseCommentsVwBttn.layer.borderWidth = 3.0
        CloseCommentsVwBttn.heavyButtonShadowWithRounding()
    }
   

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyPhotosGallery", for: indexPath) as! MyPhotosGoodOldMemCllctionCell
        cell.shadowForCollectionViewCell()
        cell.PostedContent.layer.cornerRadius = 2.0
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyPhotoCommentsTable", for: indexPath) as! Comments_MyPhotosTabVCell
        cell.Image_CommentedPersn.ImageRounding()
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func ViewAllCommentsBttnClick(_ sender: Any) {
        ViewForComments.isHidden = false
        
    }
    
    @IBAction func CloseCommnentsVwBttn(_ sender: Any) {
        
        ViewForComments.isHidden = true
    }
    @IBAction func AddNewImage_Bttn(_ sender: Any) {
        performSegue(withIdentifier: "NewImagePostingGoodOld", sender: self)
    }
    @IBAction func MyPicsGoodOldMem(_ Back: UIStoryboardSegue){
    
    }
    
}
