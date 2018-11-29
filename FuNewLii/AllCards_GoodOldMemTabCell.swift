//
//  AllCards_GoodOldMemTabCell.swift
//  FuNewLii
//
//  Created by codemac on 22/10/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class AllCards_GoodOldMemTabCell: UITableViewCell {
    @IBOutlet weak var Like_Button: UIButton!
    @IBOutlet weak var MessageTextView: UITextView!
    @IBOutlet weak var ViewForTextViewBorder: UIView!
    @IBOutlet weak var ViewForMainCard_Shadow: UIView!
    @IBOutlet weak var sendPerson_imageBtn: UIButton!
    @IBOutlet weak var viewforSendButtonBorder: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
