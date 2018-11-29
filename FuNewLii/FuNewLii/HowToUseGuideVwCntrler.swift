//
//  HowToUseGuideVwCntrler.swift
//  FuNewLii
//
//  Created by codemac-08i on 07/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class HowToUseGuideVwCntrler: UIViewController {
    @IBOutlet weak var LockedTells7: UILabel!
    @IBOutlet weak var Write_About_You6: UILabel!
    @IBOutlet weak var Know_search_EveryOne5: UILabel!
    @IBOutlet weak var Biography4: UILabel!
    @IBOutlet weak var FirstTime_Thoughts3: UILabel!
    @IBOutlet weak var BestMemories2: UILabel!
    @IBOutlet weak var BestFeauture1: UILabel!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        LockedTells7.shadowCardForLabel()
        Write_About_You6.shadowCardForLabel()
    Know_search_EveryOne5.shadowCardForLabel()
        Biography4.shadowCardForLabel()
        FirstTime_Thoughts3.shadowCardForLabel()
        BestMemories2.shadowCardForLabel()
        BestFeauture1.shadowCardForLabel()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
