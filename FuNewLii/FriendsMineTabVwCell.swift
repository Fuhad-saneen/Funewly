//
//  FriendsMineTabVwCell.swift
//  FuNewLii
//
//  Created by codemac on 25/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class FriendsMineTabVwCell: UITableViewCell {
    
    @IBOutlet weak var Add_FriendBttn: UIButton!
    @IBOutlet weak var Name_Person: UIButton!
    @IBOutlet weak var Image_Person: UIImageView!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func prepareForReuse() {
        Add_FriendBttn.setTitle("Add Friend", for: UIControlState.normal)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
