//
//  NewsTableViewCell.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/19/24.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var sourceName: UILabel!
    @IBOutlet weak var authorTitle: UILabel!
    @IBOutlet weak var newsTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
