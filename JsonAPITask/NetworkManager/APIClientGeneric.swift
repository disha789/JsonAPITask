//
//  APIClientGeneric.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/20/24.
//

import Foundation

class APIClientGeneric {
    static var shared = APIClientGeneric()
    private init() {}
    
    func fetchPersonData<T: Decodable>(from urlString: String) async throws -> T? {
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return nil
        }
        let (data, response) = try await URLSession.shared.data(from: url)
        
        do {
            let result = try JSONDecoder().decode(T.self, from: data)
            return result
        } catch {
            print(ServerErrors.dataParsingError.rawValue)
        }
        return nil
    }
}
