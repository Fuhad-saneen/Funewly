//
//  Searching_ViewController.swift
//  Fu_blii
//
//  Created by codemac-08i on 18/07/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class Searching_ViewController: UIViewController,
UITableViewDataSource,UITableViewDelegate,UITextViewDelegate,UISearchBarDelegate,UITextFieldDelegate{
    @IBOutlet weak var SearchBar: UISearchBar!

    override func viewDidLoad() {
        super.viewDidLoad()

        SearchBar.delegate = self
        SearchBar.showsCancelButton = true
       
    }
    
//    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
//        // Do some search stuff
//    }
  func searchBarCancelButtonClicked(_ searchBar: UISearchBar){
    self.view.endEditing(true)
    SearchBar.text = ""
    
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchingPage", for: indexPath) as! SearchingPageTableVwCell
        cell.image_SearchedPerson.layer.cornerRadius = cell.image_SearchedPerson.layer.bounds.height/2
        return cell
    }
    
    var ind = Int()
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        ind = indexPath.row
        performSegue(withIdentifier: "ProfileList_selectdPersn", sender: self)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func diamond_To_HomeClicked(_ sender: Any) {
        performSegue(withIdentifier: "ToHome_From_searchPage", sender: self)
    }
    @IBAction func FullProfileList(_ BackToSearchgPage : UIStoryboardSegue){
    
    }
   
}
