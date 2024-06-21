//
//  UserInfoTableViewCell.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/18/24.
//

import UIKit

class UserInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var userCompany: UILabel!
    @IBOutlet weak var userLat: UILabel!
    @IBOutlet weak var userCity: UILabel!
    @IBOutlet weak var userPhoneNumber: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userID: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setUp(userInfo: UserInfo){
        userID.text = userInfo.id.map {"\($0)"}
        userName.text = userInfo.name
        userEmail.text = userInfo.email
        userPhoneNumber.text = userInfo.phone
        userCity.text = userInfo.address?.city
        userLat.text = userInfo.address?.geo?.lat
        userCompany.text = userInfo.company?.name
    }

}
