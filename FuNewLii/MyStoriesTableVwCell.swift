//
//  MyStoriesTableVwCell.swift
//  FuNewLii
//
//  Created by codemac-08i on 07/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class MyStoriesTableVwCell: UITableViewCell {
    @IBOutlet weak var Image_Of_Person: UIImageView!
    @IBOutlet weak var ViewForMainShadow: UIView!
    @IBOutlet weak var Profile_Name: UILabel!
    @IBOutlet weak var Memories_TextView: UITextView!
    @IBOutlet weak var Like_Button: UIButton!
    @IBOutlet weak var LikeCounts: UILabel!
    @IBOutlet weak var CommentsBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
//    override func prepareForReuse() {
//        Like_Button.setImage(UIImage(named: "Liker1"), for: UIControlState.normal)
//    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
