//
//  MealsViewModel.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/19/24.
//

import Foundation

class MealsViewModel {
    var meals: MealsInfo?
    var reloadData: (()->Void)?
    
    func fetchMeal(){
        APIHandler.shared.fetch(model: MealsInfo.self, URLString: "\(Constants.mealServerURL.rawValue)") { Decodable in
            self.meals = Decodable
            DispatchQueue.main.async {
                self.reloadData?()
            }
        }
    }
}

