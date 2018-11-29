//
//  CardsHomeTableViewCell.swift
//  FuNewLii
//
//  Created by codemac on 09/11/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class CardsHomeTableViewCell: UITableViewCell {
    @IBOutlet weak var PostedUserNameButton: UIButton!
    @IBOutlet weak var Like_Bttn_Cards: UIButton!
    @IBOutlet weak var PostedMessage_Cards: UITextView!
    @IBOutlet weak var PostedUserImage_Cards: UIImageView!
    @IBOutlet weak var ViewForImageBorder_Cards: UIView!
    @IBOutlet weak var ViewForMainCard_Cards: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
