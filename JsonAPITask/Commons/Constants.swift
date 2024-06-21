//
//  Constants.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/18/24.
//

import Foundation

enum Constants: String {
    case userInfoServerURL = "https://jsonplaceholder.typicode.com/users"
    case personServerURL = "https://swapi.py4e.com/api/people/1"
    case movieServerURL = "https://gist.githubusercontent.com/dbackeus/484315/raw/dfeb530f9619bb74af5d537280a0b3b305410d01/videos.json"
    case newsServerURL = "https://gist.githubusercontent.com/congsun/600f3ad57298f9dbc23fedf6b2b25450/raw/73d7a8ed589652339ae3646d0a595298ce5e72c2/newsFeed.json"
    case mealServerURL = "https://www.themealdb.com/api/json/v1/1/search.php?f=s"
}

enum ServerErrors: String {
    case invalidServerUrl = "Invalid server url"
    case fetchingDataError = "Encountered error while fetching data from server , please check it again"
    case dataParsingError = "Issue while parsing data"
    case dataLoadingError = "Data not loaded"
}

enum TableViewCellIdentifier: String {
    case userInfoCell = "UserInfoTableViewCell"
    case movieCell = "MovieInfoTableViewCell"
    case newsCell = "NewsTableViewCell"
    case mealsCell = "MealsTableViewCell"
}
