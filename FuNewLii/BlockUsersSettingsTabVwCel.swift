//
//  BlockUsersSettingsTabVwCel.swift
//  FuNewLii
//
//  Created by codemac on 29/10/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class BlockUsersSettingsTabVwCel: UITableViewCell {
    @IBOutlet weak var Block_Unblock_Bttn: UIButton!
    @IBOutlet weak var ID_Of_Person: UILabel!
    @IBOutlet weak var Name_Of_User: UIButton!
    @IBOutlet weak var Image_Of_User: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
