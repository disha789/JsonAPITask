//
//  APIClient.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/20/24.
//

import Foundation

class APIClient {
    static var shared = APIClient()
    private init() {}
    
    func fetchPersonData() async throws -> SingleUserInfo? {
        if let url = URL(string: Constants.personServerURL.rawValue) {
            let (data, response) = try await URLSession.shared.data(from: url)
            
            do {
                let result = try JSONDecoder().decode(SingleUserInfo.self, from: data)
                return result
            } catch {
                print(ServerErrors.dataParsingError.rawValue)
            }
            return nil
        }
        return nil
    }
}
