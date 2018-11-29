//
//  CreateMemoriesNavigVwCntrlr.swift
//  FuNewLii
//
//  Created by codemac-08i on 03/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class CreateMemoriesNavigVwCntrlr: UIViewController {
    @IBOutlet weak var Memories: UIButton!
    @IBOutlet weak var FirstImpressions: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //Memories.layer.borderWidth = 1
        //Memories.layer.borderColor = UIColor(red: 255/255, green: 192/255, blue: 21/255, alpha: 1).cgColor
        Memories.layer.cornerRadius = 10.0
        
        //FirstImpressions.layer.borderWidth = 1
        //FirstImpressions.layer.borderColor = UIColor(red: 255/255, green: 192/255, blue: 21/255, alpha: 1).cgColor
        FirstImpressions.layer.cornerRadius = 10.0
        FirstImpressions.shadowForButton()
        Memories.shadowForButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func FirstImpressionBtnClick(_ sender: Any) {
        
        performSegue(withIdentifier: "FirstImpressionStories", sender: self)
    }

    @IBAction func MemoriesBtn_Click(_ sender: Any) {
        performSegue(withIdentifier: "CreateMamoriesPage", sender: self)
    }
    
    @IBAction func CreateMemoryNavig(_ MemoriesNavig : UIStoryboardSegue){
    
    }
    
}
