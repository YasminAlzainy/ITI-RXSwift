//
//  CountryTableViewCell.swift
//  Rx Swift Sample
//
//  Created by Yasmin Ayman on 21/09/1440 AH.
//  Copyright © 1440 Abd elrhman. All rights reserved.
//

import UIKit

class CountryTableViewCell: UITableViewCell {

    @IBOutlet weak var currencyTextField: UITextField!
    @IBOutlet weak var rateTextField: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
