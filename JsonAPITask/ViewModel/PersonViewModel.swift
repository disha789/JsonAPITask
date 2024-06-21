//
//  PersonViewModel.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/20/24.
//

import Foundation

class PersonViewModel {
    //    func fetchData() async throws -> SingleUserInfo? {
    //        let result = try await APIClient.shared.fetchPersonData()
    //        if let result = result {
    //            return result
    //        }
    //        return nil
    //    }
    
    func fetchData() async throws -> SingleUserInfo? {
        let urlString = Constants.personServerURL.rawValue
        if let result: SingleUserInfo = try await APIClientGeneric.shared.fetchPersonData(from: urlString) {
            return result
        }
        return nil
    }
}

