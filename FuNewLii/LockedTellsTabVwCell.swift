//
//  LockedTellsTabVwCell.swift
//  FuNewLii
//
//  Created by codemac on 20/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class LockedTellsTabVwCell: UITableViewCell {
    @IBOutlet weak var LockedTell_MessageTexts: UILabel!
    @IBOutlet weak var Person_Name: UILabel!
    @IBOutlet weak var RequestUnlock_Btn: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
