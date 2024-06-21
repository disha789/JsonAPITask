//
//  NewsDataModel.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/19/24.
//

import Foundation

struct News: Codable {
    let status: String?
    let totalResults: Int?
    let articles: [Article]
}

struct Article: Codable {
    let source: Source?
    let author: String?
    let title: String?
    let description: String?
    let urlToImage: String?
    let publishedAt: String?
    let content: String?
}

struct Source: Codable {
    let name: String?
}
