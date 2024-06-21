//
//  SingleUserViewModel.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/18/24.
//

import Foundation

class SingleUserViewModel {
    var singleUser: SingleUserInfo?
    var reloadData: (() -> Void)?
    
    func fetchPerson(){
        APIHandler.shared.fetch(model: SingleUserInfo.self, URLString: "\(Constants.personServerURL.rawValue)") { Decodable in
            self.singleUser = Decodable
            DispatchQueue.main.async {
                self.reloadData?()
            }
        }
    }
}
