//
//  MovieInfoTableViewCell.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/19/24.
//

import UIKit

class MovieInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var transcodingHeight: UILabel!
    @IBOutlet weak var transcodingTitle: UILabel!
    @IBOutlet weak var movieID: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
