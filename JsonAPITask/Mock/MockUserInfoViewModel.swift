//
//  MockUserInfoViewModel.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/25/24.
//

import Foundation

class MockUserInfoViewModel: UserInfoViewModel{
    
    override func fetchUsers(){
        let GeoInfo = GeoInfo(lat: "", lng: "")
        let AddressInfo = AddressInfo(street: "", suite: "", city: "", zipcode: "", geo: GeoInfo)
        let CompanyInfo = CompanyInfo(name: "", catchPhrase: "", bs: "")
        users = [UserInfo(id: 1, name: "John", username: "", email: "", phone: "", website: "", address: AddressInfo, company: CompanyInfo)]
    }
}
