//
//  OtherPersnMainVwTableVwCel.swift
//  FuNewLii
//
//  Created by codemac-08i on 09/08/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class OtherPersnMainVwTableVwCel: UITableViewCell {
    @IBOutlet weak var LikeSymbol: UIImageView!
    @IBOutlet weak var Like_countLabel: UILabel!
    @IBOutlet weak var Time_agoLabel: UILabel!
    @IBOutlet weak var DescriptionDetailsGuest: UILabel!
    @IBOutlet weak var GuestPrsnImage: UIImageView!
    @IBOutlet weak var GuestPersnProflName: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
