//
//  FeatureCardSearchTabVwCel.swift
//  FuNewLii
//
//  Created by codemac-08i on 13/09/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit

class FeatureCardSearchTabVwCel: UITableViewCell {
    @IBOutlet weak var buttonForAddPerson: UIButton!
    @IBOutlet weak var AddPersonTick_Image: UIImageView!
    @IBOutlet weak var ID_Of_Person: UILabel!
    @IBOutlet weak var Name_Of_Person: UILabel!
    @IBOutlet weak var image_Of_Person: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
