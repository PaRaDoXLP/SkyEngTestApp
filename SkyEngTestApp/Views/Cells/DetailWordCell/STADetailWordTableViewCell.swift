//
//  STADetailWordTableViewCell.swift
//  SkyEngTestApp
//
//  Created by Вячеслав on 02/03/2020.
//  Copyright © 2020 PaRaDoX. All rights reserved.
//

import UIKit

class STADetailWordTableViewCell: UITableViewCell {
    @IBOutlet var translateLabel: UILabel!
    @IBOutlet var noteLabel: UILabel!
    @IBOutlet var meaningImageView: UIImageView!
    @IBOutlet var loadActivityIndicator: UIActivityIndicatorView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
