//
//  MealsTableViewCell.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/19/24.
//

import UIKit

class MealsTableViewCell: UITableViewCell {

    @IBOutlet weak var mealDescription: UILabel!
    @IBOutlet weak var mealName: UILabel!
    @IBOutlet weak var mealImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
