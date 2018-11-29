//
//  FriendsPostTabVwCell.swift
//  FuNewLii
//
//  Created by codemac on 17/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class FriendsPostTabVwCell: UITableViewCell {
    
    @IBOutlet weak var Like_Button: UIButton!
    @IBOutlet weak var LikeCounts_btn: UIButton!
    @IBOutlet weak var Comments_Bttn: UIButton!
    @IBOutlet weak var Story_Textview: UITextView!
    @IBOutlet weak var ImageOfStory: UIImageView!
    @IBOutlet weak var NameOfPersonBtn: UIButton!
    
    @IBOutlet weak var image_OfPerson: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
