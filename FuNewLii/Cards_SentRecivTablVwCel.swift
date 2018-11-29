//
//  Cards_SentRecivTablVwCel.swift
//  FuNewLii
//
//  Created by codemac-08i on 09/08/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class Cards_SentRecivTablVwCel: UITableViewCell {
    @IBOutlet weak var LikeButton: UIButton!
    @IBOutlet weak var Times_ago: UILabel!
    @IBOutlet weak var CardMessage_Details: UITextView!
    @IBOutlet weak var Image_OfPerson: UIImageView!
    @IBOutlet weak var ViewForImageBorder: UIView!
    @IBOutlet weak var Person_ProfName: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
