//
//  MyPublishdPostTabVwCel.swift
//  FuNewLii
//
//  Created by codemac-08i on 08/08/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class MyPublishdPostTabVwCel: UITableViewCell {
  
    @IBOutlet weak var Optionsbutton: UIButton!
    @IBOutlet weak var times_agoLabel: UILabel!
    @IBOutlet weak var DescriptionDetailsLabl: UILabel!
    @IBOutlet weak var MyImage: UIImageView!
    @IBOutlet weak var WrittenPrsnIMG: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
