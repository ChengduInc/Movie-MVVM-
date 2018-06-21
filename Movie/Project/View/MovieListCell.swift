//
//  MovieListCell.swift
//  Movie
//
//  Created by Apple on 2018/6/21.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

class MovieListCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var movieObj : Movie? {
        didSet {
            setMovieData()
        }
    }
    
    func setMovieData() {
        nameLabel.text = movieObj?.name
        directorLabel.text = movieObj?.director
        dateLabel.text = movieObj?.date
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
}
