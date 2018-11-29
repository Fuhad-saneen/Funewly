//
//  MyMemoriesTabVwCell.swift
//  FuNewLii
//
//  Created by codemac-08i on 28/08/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class MyMemoriesTabVwCell: UITableViewCell {
    @IBOutlet weak var Image_Content: UIImageView!
    @IBOutlet weak var ViewForMainShadowCard: UIView!
    @IBOutlet weak var Like_Button: UIButton!
    @IBOutlet weak var CountsOfLikelabel: UILabel!
    @IBOutlet weak var CommentsButton: UIButton!
    @IBOutlet weak var MemoriesTextview: UITextView!
    @IBOutlet weak var TitleForMemories: UILabel!
   
   
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
