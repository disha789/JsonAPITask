//
//  UserDataModel.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/18/24.
//

import Foundation
import UIKit

struct UserInfo: Codable {
    let id: Int?
    let name: String?
    let username: String?
    let email: String?
    let phone: String?
    let website: String?
    let address: AddressInfo?
    let company: CompanyInfo?
}

struct AddressInfo: Codable {
    let street: String?
    let suite: String?
    let city: String?
    let zipcode: String?
    let geo: GeoInfo?
}

struct GeoInfo: Codable {
    let lat: String?
    let lng: String?
}

struct CompanyInfo: Codable {
    let name: String?
    let catchPhrase: String?
    let bs: String?
}
