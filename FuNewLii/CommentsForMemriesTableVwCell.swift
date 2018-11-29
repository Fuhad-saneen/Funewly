//
//  CommentsForMemriesTableVwCell.swift
//  FuNewLii
//
//  Created by codemac-08i on 05/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class CommentsForMemriesTableVwCell: UITableViewCell {
    @IBOutlet weak var likeforCommentBtn: UIButton!
    @IBOutlet weak var ReplyBtnClicked: UIButton!
    @IBOutlet weak var commentOf_sender: UITextView!
    @IBOutlet weak var NameOf_sender: UILabel!
    @IBOutlet weak var ImageOf_sender: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
