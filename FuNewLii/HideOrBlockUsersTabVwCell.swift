//
//  HideOrBlockUsersTabVwCell.swift
//  FuNewLii
//
//  Created by codemac on 01/11/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class HideOrBlockUsersTabVwCell: UITableViewCell {
    @IBOutlet weak var HideOrBlock_Bttn: UIButton!
    @IBOutlet weak var Id_Of_Users: UILabel!
    @IBOutlet weak var NameOfUsers: UIButton!
    @IBOutlet weak var ImageOfUsers: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
