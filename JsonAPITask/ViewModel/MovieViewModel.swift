//
//  MovieViewModel.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/19/24.
//

import Foundation

class MovieViewModel {
    var movie: [Movie]?
    var reloadData: (() -> Void)?
    
    func fetchMovie(){
        APIHandler.shared.fetch(model: [Movie].self, URLString: "\(Constants.movieServerURL.rawValue)") { Decodable in
            self.movie = Decodable
            DispatchQueue.main.async {
                self.reloadData?()
            }
        }
    }
}

