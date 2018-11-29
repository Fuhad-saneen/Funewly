//
//  Comments_MyPhotosTabVCell.swift
//  FuNewLii
//
//  Created by codemac on 27/10/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class Comments_MyPhotosTabVCell: UITableViewCell {
    @IBOutlet weak var Reply_ForComment: UIButton!
    @IBOutlet weak var LikeButton: UIButton!
    @IBOutlet weak var Comment_Content: UILabel!
    @IBOutlet weak var Name_CommentedPrsn: UIButton!
    @IBOutlet weak var Image_CommentedPersn: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
