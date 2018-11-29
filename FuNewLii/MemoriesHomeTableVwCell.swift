//
//  MemoriesHomeTableVwCell.swift
//  FuNewLii
//
//  Created by codemac on 09/11/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class MemoriesHomeTableVwCell: UITableViewCell {
    @IBOutlet weak var CaptionOfPost_Mem: UILabel!
    @IBOutlet weak var TitleOfPost_Mem: UILabel!
    @IBOutlet weak var PostedUserImage_Mem: UIImageView!
    @IBOutlet weak var PostedUserName_Mem: UILabel!
    @IBOutlet weak var PostedImageMem: UIImageView!
    @IBOutlet weak var ViewForManShadowMem: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
