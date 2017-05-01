//
//  MovieContentCell.swift
//  WatchList
//
//  Created by Alexander Rinne on 30-04-17.
//  Copyright © 2017 Alexander Rinne. All rights reserved.
//

import UIKit

class MovieContentCell: UITableViewCell {

    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDescription: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
