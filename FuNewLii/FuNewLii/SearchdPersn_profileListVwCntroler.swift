//
//  SearchdPersn_profileListVwCntroler.swift
//  Fu_blii
//
//  Created by codemac-08i on 19/07/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class SearchdPersn_profileListVwCntroler: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var ProfileNavigation_Bttn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        ProfileNavigation_Bttn.ButtonOvelShape()
        ProfileNavigation_Bttn.shadowForButton()
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchedFullList", for: indexPath) as! SearchdPersnFullTablVwCel
        cell.WrittenPrsnImage.image = UIImage(named: "ab")
        cell.WrittenPrsnImage.layer.cornerRadius = cell.WrittenPrsnImage.layer.bounds.height/2
        cell.PersnProfileImage.image = UIImage(named: "ab")
        cell.PersnProfileImage.layer.cornerRadius = 10.0
        //cell.DescriptionDetails.text =
        //cell.timeAgo.text =
        //cell.WrittenPrsnName.text =
        return cell
    }
    
    var ind = Int()
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        ind = indexPath.row
        performSegue(withIdentifier: "SelectedSell_profileOfPerson", sender: self)
    }
    
    @IBAction func SelectedPersonProfile(_ sender: Any) {
        performSegue(withIdentifier: "MainProfileView", sender: self)
        
    }
    @IBAction func BackFromOtherPrsn(_ OtherPrsnProfil: UIStoryboardSegue){
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var ProfilePageIdentify = "FromListOfSerchedPerson"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MainProfileView"{
        let seg = segue.destination as! OtherPersonMainProfileVwControlr
            seg.ProfilePageSegueIdentify = ProfilePageIdentify
        }
        else if segue.identifier == "SelectedSell_profileOfPerson"{
        let seg = segue.destination as! OtherPersons_profileViewCntroller
            seg.PageIdentifier = ProfilePageIdentify
        }
        }


   }
