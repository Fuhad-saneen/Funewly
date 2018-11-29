//
//  CreateMemoriesVwCntrlr.swift
//  FuNewLii
//
//  Created by codemac-08i on 03/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class CreateMemoriesVwCntrlr: UIViewController,UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate,UITextViewDelegate {
    @IBOutlet weak var MemoriesTextView: UITextView!
    @IBOutlet weak var TitleTextView: UITextView!
    @IBOutlet weak var Add_Image_Bttn: UIButton!
    @IBOutlet weak var Sent_To_PersnsBttn: UIButton!
    @IBOutlet weak var Post_It_Done_Bttn: UIButton!
    @IBOutlet weak var ImageView_1: UIImageView!
    @IBOutlet weak var ViewforShadow: UIView!
    @IBOutlet weak var Table_Outlet: UITableView!
    @IBOutlet weak var SearchBar: UISearchBar!
    @IBOutlet weak var ViewForSearchFrnds: UIView!

    var lighterBlack = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
    var darkGray = UIColor(red: 127/255, green: 127/255, blue: 127/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //Design code
        ViewforShadow.ShadowForView()
        ViewForSearchFrnds.isHidden = true
        ViewforShadow.layer.cornerRadius = 20.0
        
        Post_It_Done_Bttn.layer.cornerRadius = 2.0
        ImageView_1.layer.cornerRadius = 5.0
        Sent_To_PersnsBttn.setTitle("To,", for: .normal)
        
        Add_Image_Bttn.setTitle("Add an image", for: .normal)
      //TextView Texts setting
        TitleTextView.delegate = self
        MemoriesTextView.delegate = self
        
        TitleTextView.textColor = darkGray
        TitleTextView.text = "Add a title here"
        
        MemoriesTextView.textColor = lighterBlack
        MemoriesTextView.text = "      Write a beatiful and unforgettable memory about your good old days and good old friends. Tag with with more than one friend and share the happiness with them too. It's a greate opportunity that you can make your bonds stronger once again. and enjoy the reunion , and share some beautiful memories to recall those best days of your life."
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView == TitleTextView{
        if TitleTextView.textColor == darkGray{
        TitleTextView.text = ""
            TitleTextView.textColor = UIColor.black
        }
        }
        else {
        if MemoriesTextView.textColor == lighterBlack{
        MemoriesTextView.text = ""
            MemoriesTextView.textColor = UIColor.black
        }
        }
    }

    func textViewDidEndEditing(_ textView: UITextView) {
        if textView == MemoriesTextView{
        if MemoriesTextView.text.isEmpty{
        MemoriesTextView.text = "      Write a beatiful and unforgettable memory about your good old days and good old friends. Tag with with more than one friend and share the happiness with them too. It's a greate opportunity that you can make your bonds stronger once again. and enjoy the reunion , and share some beautiful memories to recall those best days of your life."
            MemoriesTextView.textColor = lighterBlack
            }} else{
        if TitleTextView.text.isEmpty{
        
        TitleTextView.text = "Add a title here"
            TitleTextView.textColor = darkGray
        }
        }
    }
    
    @IBAction func ADD_SendToFriends(_ sender: Any) {
        ViewForSearchFrnds.isHidden = false
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CreateMemorySearching", for: indexPath) as! SrchingForCreateMemryTabVwCell
        cell.image_Of_Person.ImageRounding()
        //cell.AddPersonTick_Image.image = UIImage(named: <#T##String#>)
        cell.Name_Of_Person.text = "fuhad saneen"
        cell.ID_Of_Person.text = "fuh4445"
        cell.AddPersonTick_Image.image = UIImage(named: "add-circular-outlined-button")
        cell.buttonForAddPerson.tag = indexPath.item
        cell.buttonForAddPerson.addTarget(self, action: #selector(addPersonBtnSearching), for: UIControlEvents.touchUpInside)
        indx = indexPath.item
        
        return cell
    }
    
    //var arry : [String]
    var indx : Int?
    @objc func addPersonBtnSearching(_ addbutton : UIButton){
    
        
    print(addbutton.tag)
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func TagFriends_Clicked(_ sender: Any) {
        
        performSegue(withIdentifier: "Tag_Friends", sender: self)
    }
    
    @IBAction func Add_Image(_ sender: Any) {
        let image = UIImagePickerController()
        image.delegate = self
        imagePickerController(image, didFinishPickingMediaWithInfo: [UIImagePickerControllerOriginalImage: ImageView_1])
        
        
       image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        image.allowsEditing = false
        self.present(image, animated: true){
        
        }
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage{
        ImageView_1.image = image
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func CancelSearchingBtn(_ sender: Any) {
        
        ViewForSearchFrnds.isHidden = true
    }
    
    @IBAction func ViewMyMemoriesclick(_ sender: Any) {
        performSegue(withIdentifier: "ViewAllMyMemories", sender: self)
    }
    
    var MemoryIdentify = "CreateMemories"
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ViewAllMyMemories"{
        let segg = segue.destination as! MemoriesMineVwCntrlr
            segg.segueIdentify = MemoryIdentify
        
        }
        if segue.identifier == "Tag_Friends"{
            let segu = segue.destination as! TagSelectFriendsVwCntrlr
            segu.pageidentifierTagPage = MemoryIdentify
        }
        
        
    }
    
    @IBAction func CreateMemory(_ Back : UIStoryboardSegue){
    
    
    }

}
