//
//  My_Posts_publishedVwController.swift
//  Fu_blii
//
//  Created by codemac-08i on 18/07/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class My_Posts_publishedVwController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var Lyll_Me_ProfileBttn: UIButton!
    @IBOutlet weak var ViewForDiamondBttn: UIView!
    @IBOutlet weak var ViewForProfileNavigation: UIView!
    
    @IBOutlet weak var ViewForLyllAccountLink: UIView!
   
    @IBOutlet weak var Settings_Button: UIButton!
    @IBOutlet weak var tableView_Outlet: UITableView!
    @IBOutlet weak var VisualEffect_Cell: UIVisualEffectView!

    @IBOutlet weak var CancelCellSettingsBtn: UIButton!
    @IBOutlet weak var BlockThisPerson: UIButton!
    @IBOutlet weak var Deletebttn: UIButton!
    @IBOutlet weak var ViewForCellOPTIONS: UIView!
    @IBOutlet weak var ProfileImagButton: UIButton!
    @IBOutlet weak var ViewForProfileIMG: UIView!
    @IBOutlet weak var MyProfileNameButtn: UIButton!
    
    var effect = UIVisualEffect()
    override func viewDidLoad() {
        super.viewDidLoad()
        //view for cell's options settings
        ViewForCellOPTIONS.isHidden = true
        ViewForCellOPTIONS.layer.cornerRadius = 15.0
        effect = VisualEffect_Cell.effect!
        
       ViewForLyllAccountLink.ViewRoundingfunc()
        ViewForLyllAccountLink.ShadowForView()
        ViewForDiamondBttn.ViewRoundingfunc()
        ViewForDiamondBttn.ShadowForView()
        ViewForProfileNavigation.ShadowForView()
        ViewForProfileNavigation.layer.cornerRadius = 10.0
       
        Deletebttn.OptionsOfCellsDesign()
        
        BlockThisPerson.OptionsOfCellsDesign()
        
        CancelCellSettingsBtn.OptionsOfCellsDesign()
        
       ProfileImagButton.ButtonRounding()
       ProfileImagButton.shadowForButton()
        ViewForProfileIMG.layer.cornerRadius = ViewForProfileIMG.layer.bounds.height/2
        ViewForProfileIMG.layer.borderColor = UIColor.lightGray.cgColor
        ViewForProfileIMG.layer.borderWidth = 0.5
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyPublishedPosts", for: indexPath) as! MyPublishdPostTabVwCel
        cell.WrittenPrsnIMG.image = UIImage(named: "ab")
        cell.WrittenPrsnIMG.layer.cornerRadius = cell.WrittenPrsnIMG.layer.bounds.height/2
        cell.MyImage.image = UIImage(named: "James_Bond")
        cell.MyImage.layer.cornerRadius = 10.0
        cell.Optionsbutton.addTarget(self, action: #selector(CellOPTIONS(_ :)),for: UIControlEvents.touchUpInside)
        //cell.DescriptionDetailsLabl.text =
       
        return cell
    }

    func CellOPTIONS(_ sender: UIButton){
    
        ViewForCellOPTIONS.isHidden = false
        tableView_Outlet.isScrollEnabled = false
        Settings_Button.isUserInteractionEnabled = false
       
        self.view.addSubview(ViewForCellOPTIONS)
        ViewForCellOPTIONS.center = self.view.center
        
        ViewForCellOPTIONS.transform = CGAffineTransform.init(scaleX: 1.2, y: 1.2)
        
        //ViewForCellOPTIONS.alpha = 0
       
        
        UIView.animate(withDuration: 0.4) {
            self.VisualEffect_Cell.effect = self.effect
            self.ViewForCellOPTIONS.alpha = 1
            self.ViewForCellOPTIONS.transform = CGAffineTransform.identity
            
        }
        
        
    }
    
    var nim = Int()
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nim = indexPath.row
        performSegue(withIdentifier: "ToMyProfilesOwnView", sender: self)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func CancelCellSettings(_ sender: Any) {
        
        ViewForCellOPTIONS.isHidden = true
        tableView_Outlet.isScrollEnabled = true
        Settings_Button.isUserInteractionEnabled = true
    }
    
    @IBAction func Delete_CellOptionsBtn(_ sender: Any) {
//         self.Deletebttn.gradientColorSet(colors: [UIColor.green.cgColor, UIColor.white.cgColor])
        
        let alert = UIAlertController(title: "Delete post", message: "Are you sure about deleting this post?", preferredStyle: UIAlertControllerStyle.alert)

        let submit = UIAlertAction(title: "Yes", style: .default, handler: { deletefunctionhere in self.ViewForCellOPTIONS.isHidden = true})
        
        let cancell = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.destructive, handler: { action in self.ViewForCellOPTIONS.isHidden = false
        })
        
        cancell.setValue(UIColor.black, forKey:"titleTextColor")
        alert.addAction(submit)
        alert.addAction(cancell)
        
        alert.view.tintColor = UIColor(red: 255/255, green: 0/255, blue: 82/255, alpha: 1)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func BlockPerson_BttnClick(_ sender: Any) {
        let alert2 = UIAlertController(title: "Block this person", message: "Blocking from writing your biography?", preferredStyle : UIAlertControllerStyle.alert)
        
        let submit = UIAlertAction(title: "Yes" , style: .default , handler: { blockingFunc in self.ViewForCellOPTIONS.isHidden = true })
        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: {canceling in self.ViewForCellOPTIONS.isHidden = false })
        cancel.setValue(UIColor.black, forKey: "titleTextColor")
        
        alert2.addAction(submit)
        alert2.addAction(cancel)
        
        alert2.view.tintColor = UIColor(red: 255/255, green: 0/255, blue: 82/255, alpha: 1)
       
        self.present(alert2, animated : true, completion: nil)
    
    }
    
    @IBAction func HomeButton(_ sender: Any) {
        performSegue(withIdentifier: "BackToHome", sender: self)
        
    }

    @IBAction func OptionsSettingbtn(_ sender: Any) {
        
        performSegue(withIdentifier: "ToMainSettingsPage", sender: self)
    }
    
    @IBAction func MyProImageBtnClickd(_ sender: UIButton) {
        performSegue(withIdentifier:"ToMyProfileVwNormal", sender:self)
        sender.LikeBtnAnimation()
    }
    @IBAction func Lyll_MeProfilePage_Bttn(_ sender: Any) {
        performSegue(withIdentifier: "MyLyllProfilePage", sender: self)
        
    }
    
    @IBAction func BackToMyPosts(_ MypostPublishd: UIStoryboardSegue){
        
    }
    
    var profileViewIdentify = "FromMyPublishedPost"
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToMyProfileVwNormal"{
    let seg = segue.destination as! OtherPersonMainProfileVwControlr
            seg.ProfilePageSegueIdentify = profileViewIdentify
        
        }
        if segue.identifier == "MyLyllProfilePage"{
        let segg = segue.destination as! MyProfileEditableDetailsVwCntrlr
            segg.myProIdentify = profileViewIdentify
        
        }
    }

}
