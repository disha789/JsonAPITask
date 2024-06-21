//
//  MealDataModel.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/19/24.
//

import Foundation

struct MealsInfo: Codable {
    let meals: [Meals]
}

struct Meals: Codable {
    let strInstructions: String?
    let strMeal: String?
    let strMealThumb: String?
}
