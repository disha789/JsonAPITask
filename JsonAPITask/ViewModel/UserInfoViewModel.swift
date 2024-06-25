//
//  UserInfoViewModel.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/18/24.
//

import Foundation

class UserInfoViewModel {
    var users: [UserInfo] = []
    var reloadData: (() -> Void)?
    
    func fetchUsers(){
        APIHandler.shared.fetch(model: [UserInfo].self, URLString: "\(Constants.userInfoServerURL.rawValue)") { Decodable in
            self.users = Decodable
            DispatchQueue.main.async {
                self.reloadData?()
            }
        }
    }
    
    func getUserCount() -> Int{
        return users.count
    }
    
    func getUserFor(row: Int) -> UserInfo? {
        if row < users.count {
            return users[row]
        }
        return nil
    }
}
