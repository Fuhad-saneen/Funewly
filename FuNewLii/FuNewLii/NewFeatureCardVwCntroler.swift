//
//  NewFeatureCardVwCntroler.swift
//  FuNewLii
//
//  Created by codemac-08i on 06/08/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class NewFeatureCardVwCntroler: UIViewController,UITextViewDelegate,UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate {
    @IBOutlet weak var ViewForSendPersonImg: UIView!
    @IBOutlet weak var BackButton_Outlet: UIButton!
    @IBOutlet weak var SendPrsnID_Field: UITextField!
    @IBOutlet weak var ViewForSearching: UIView!
    @IBOutlet weak var viewForTextviewBorder: UIView!
    @IBOutlet weak var textview: UITextView!
    @IBOutlet weak var ViewForTextView: UIView!
    @IBOutlet weak var Send_Button: UIButton!
  
    @IBOutlet weak var SendToPersonBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        ViewForSearching.isHidden = true
        BackButton_Outlet.isUserInteractionEnabled = true
        SendPrsnID_Field.isUserInteractionEnabled = true
        
        SendToPersonBtn.ButtonRounding()
        ViewForSendPersonImg.ViewRoundingfunc()

        
        Send_Button.layer.borderWidth = 1
        
        Send_Button.layer.borderColor = UIColor(red: 18/255, green: 180/255, blue: 171/255, alpha: 1).cgColor
        viewForTextviewBorder.cardTextViewBorder()
        
        
        ViewForTextView.shadowForCardView()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.view.addSubview(ViewForSearching)
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celll = tableView.dequeueReusableCell(withIdentifier: "SendCardsSearching", for: indexPath) as! FeatureCardSearchTabVwCel
        celll.image_Of_Person.image = UIImage(named: "ac")
        celll.Name_Of_Person.text = "Fuhad saneen"
        celll.ID_Of_Person.text = "Fuh1235"
        celll.AddPersonTick_Image.image = UIImage(named: "add-circular-outlined-button")
        celll.image_Of_Person.ImageRounding()
        celll.buttonForAddPerson.addTarget(self, action: #selector(addPersonBtnSearching(_:)), for: UIControlEvents.touchUpInside)
        celll.buttonForAddPerson.tag = indexPath.item
        indx = indexPath.item
        return celll
    }
    
    var indx : Int?
    @objc func addPersonBtnSearching(_ addbutton : UIButton){
        
        
        print(addbutton.tag)
        
        
    }
    @IBAction func SearchButtonClick(_ sender: Any) {
        ViewForSearching.isHidden = false
        SendPrsnID_Field.isUserInteractionEnabled = false
        BackButton_Outlet.isUserInteractionEnabled = false
        
    }
    @IBAction func CloseSearchingVw(_ sender: Any) {
        ViewForSearching.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    

}
