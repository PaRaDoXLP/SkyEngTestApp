//
//  STAWordTableViewCell.swift
//  SkyEngTestApp
//
//  Created by Вячеслав on 01/03/2020.
//  Copyright © 2020 PaRaDoX. All rights reserved.
//

import UIKit

class STAWordTableViewCell: UITableViewCell {
    
    @IBOutlet var wordLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
