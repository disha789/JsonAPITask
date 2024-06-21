//
//  MovieDataModel.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/19/24.
//

import Foundation

struct Movie: Codable {
    let created_at: String?
    let transcodings: [Transcodings]
    let title: String?
    
}

struct Transcodings: Codable {
    let id: String?
    let title: String?
    let height: Int?
}
