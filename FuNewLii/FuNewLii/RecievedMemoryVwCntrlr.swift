//
//  RecievedMemoryVwCntrlr.swift
//  FuNewLii
//
//  Created by codemac-08i on 07/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class RecievedMemoryVwCntrlr: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var tableOutlet: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

       /* tableOutlet.estimatedRowHeight = 74
        tableOutlet.rowHeight = UITableViewAutomaticDimension */
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemoriesForMe", for: indexPath) as! RecievdMemoryTabVwCell
        
        cell.comment_ButtonClick.addTarget(self, action: #selector(commentClicked),for: UIControlEvents.touchUpInside)
        cell.Like_Button.addTarget(self, action: #selector(LikeButton_Clicked(_:)), for: UIControlEvents.touchUpInside)
        //cell.Like_CountBttn.setTitle("counts here", for: UIControlState.normal)
        return cell
    }

   // var LikeCount = 1  /* Like Function*/
    @objc func LikeButton_Clicked(_ sender: UIButton) {
        sender.LikeBtnAnimation()
        if sender.tag == 0{
            
            sender.setImage(UIImage(named: "Liker2"), for: .normal)
            sender.tag = 1
            print(sender.tag)
        } else if sender.tag == 1{
            
            sender.setImage(UIImage(named: "Liker1"), for: .normal)
            sender.tag = 0
            print(sender.tag)
        }
        
    }
    
    
    func commentClicked(){
        performSegue(withIdentifier: "To_Comment", sender: self)
    
    }
    
    @IBAction func MyRecievedMemorys(_ Back: UIStoryboardSegue){
    
    }
    var Identifier = "FromRecievdMemory"
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "To_Comment"{
           let seg = segue.destination as! CommentsVwCntroller
            seg.page_Identifier = Identifier
            
        } }
}
