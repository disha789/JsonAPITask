//
//  JsonAPITaskTests.swift
//  JsonAPITaskTests
//
//  Created by Disha patel on 6/18/24.
//

import XCTest
@testable import JsonAPITask

final class JsonAPITaskTests: XCTestCase {

    var objUserInfoVM: UserInfoViewModel?
    var objAPIHandler: APIHandler?
    
    override func setUpWithError() throws {
      objUserInfoVM = UserInfoViewModel()
      objAPIHandler = APIHandler.shared
    }

    override func tearDownWithError() throws {
       objUserInfoVM = nil
       objAPIHandler = nil
    }
    
    func testGetUserCountForUserInfo(){
        let result = objUserInfoVM?.getUserCount()
        XCTAssertEqual(result, 0)
    }
    
    func testGetUserForUserInfoWhenNoUsers() {
        
        let resultNilUsers = objUserInfoVM?.getUserFor(row: 0)
        XCTAssertNil(resultNilUsers)
    }
    
    func testGetUserForUserInfoWithMockData() {
        // mock data
        let GeoInfo = GeoInfo(lat: "", lng: "")
        let AddressInfo = AddressInfo(street: "", suite: "", city: "", zipcode: "", geo: GeoInfo)
        let CompanyInfo = CompanyInfo(name: "", catchPhrase: "", bs: "")
        objUserInfoVM?.users = [UserInfo(id: 1, name: "", username: "", email: "", phone: "", website: "", address: AddressInfo, company: CompanyInfo)]
        
        let resultUser = objUserInfoVM?.getUserFor(row: 0)
        XCTAssertNotNil(resultUser)
    }
    
    func testFetchForAPIHandler() {
        //Empty URL
        objAPIHandler?.fetch(model: [UserInfo].self, URLString: "", completion: { users in
        XCTAssertNil(users)
        })
        
        //Invalid URL
        objAPIHandler?.fetch(model: [UserInfo].self, URLString: "invalid_url", completion: { users in
        XCTAssertNil(users)
        })
        
        //Valid URL
        objAPIHandler?.fetch(model: [UserInfo].self, URLString: "\(Constants.userInfoServerURL.rawValue)", completion: { users in
        XCTAssertNil(users)
        })
    }
    
    func testVMFetchUserWithOneUser(){
        objUserInfoVM = MockUserInfoViewModel()
        objUserInfoVM?.fetchUsers()
        XCTAssertEqual(objUserInfoVM?.users.count, 1)
        XCTAssertEqual(objUserInfoVM?.users.first?.id, 1)
    }

}
