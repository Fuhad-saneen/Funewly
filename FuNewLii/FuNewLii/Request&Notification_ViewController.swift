//
//  Request&Notification_ViewController.swift
//  Fu_blii
//
//  Created by codemac-08i on 18/07/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class Request_Notification_ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var ViewForNotification: UIView!
    @IBOutlet weak var ViewForRequestAccepting: UIView!
    @IBOutlet weak var MainTitleForPage_label: UILabel!
    @IBOutlet weak var Request_forPostingtable: UITableView!
    @IBOutlet weak var Notifications_Bttn: UIButton!
    //@IBOutlet weak var Tags_Of_PostsBttn: UIButton!
    @IBOutlet weak var requests_bttn: UIButton!
    

    var tabledictionary : Dictionary = [String : AnyObject]()
   
    override func viewDidLoad() {
        super.viewDidLoad()

        Request_forPostingtable.estimatedRowHeight = 74
        Request_forPostingtable.rowHeight = UITableViewAutomaticDimension
        
        requests_bttn.heavyButtonShadowWithOvelShape()
        //Tags_Of_PostsBttn.heavyButtonShadowWithOvelShape()
        Notifications_Bttn.heavyButtonShadowWithOvelShape()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RequestNotificationTable", for: indexPath) as! RequestNotifiTableVwCell
        //cell.SendPerson_image.image = UIImage(String: "ac")
        cell.SendPerson_image.layer.cornerRadius = cell.SendPerson_image.layer.bounds.height/2
        //cell.SendPerson_name.text = "fuha saneeen"
        cell.DetailsOfPost.text = "wants to post a biography about you"
        cell.Delete_Button.addTarget(self, action: #selector(deleteButton_clicked(Sender:)), for: .valueChanged)
        cell.Accept_Button.addTarget(self, action: #selector(AcceptIt_clicked(Sender:)), for: .valueChanged)
    return cell
        }
    
    
    @objc func deleteButton_clicked(Sender: UIButton!){
    //delete function for cell
    }
    @objc func AcceptIt_clicked(Sender: UIButton){
    // function for accepting in a cell
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
    }

    @IBAction func DeleteBttn_Click(_ sender: Any) {
        let alert2 = UIAlertController(title: "Delete request", message: "Are you sure you want to delete this request?", preferredStyle : UIAlertControllerStyle.alert)
        
        let submit = UIAlertAction(title: "Yes" , style: .default , handler: nil)
        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        cancel.setValue(UIColor.black, forKey: "titleTextColor")
        
        alert2.addAction(submit)
        alert2.addAction(cancel)
        
        alert2.view.tintColor = UIColor(red: 255/255, green: 0/255, blue: 82/255, alpha: 1)
        
        self.present(alert2, animated : true, completion: nil)
        
    }
    @IBAction func RequestsBttnForTableShow(_ sender: Any) {
        
        requests_bttn.setTitleColor(UIColor.black, for: .normal)
        Notifications_Bttn.setTitleColor(UIColor.gray, for: .normal)
    }
    
    @IBAction func NotficationbtnForTableShow(_ sender: Any) {
        Notifications_Bttn.setTitleColor(UIColor.black, for: .normal)
            requests_bttn.setTitleColor(UIColor.gray, for: .normal)
    }
    
    
    @IBAction func BackButton_clicked( sender: Any) {
        performSegue(withIdentifier: "BackHome", sender: self)
    }
    
    
}
