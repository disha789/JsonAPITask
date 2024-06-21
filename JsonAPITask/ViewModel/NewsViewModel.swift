//
//  NewsViewModel.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/19/24.
//

import Foundation

class NewsViewModel {
    var news: News?
    var reloadData: (() -> Void)?
    
    func fetchNews(){
        APIHandler.shared.fetch(model: News.self, URLString: "\(Constants.newsServerURL.rawValue)") { Decodable in
            self.news = Decodable
            DispatchQueue.main.async {
                self.reloadData?()
            }
        }
    }
}
