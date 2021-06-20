//
//  Mvvm_demoTests.swift
//  Mvvm_demoTests
//
//  Created by Avinash on 22/05/21.
//  Copyright © 2021 AlpenGlowTechnologies. All rights reserved.
//

import XCTest
@testable import Mvvm_demo

class Mvvm_demoTests: XCTestCase {
    var demoViewmodel: DemoViewModel!
    override func setUp() {
        let mockservice = MockDemoService()
        demoViewmodel = DemoViewModel(userservice: mockservice)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    func testServiceCall() {
        let expect = expectation(description: "expection")
        demoViewmodel.getDatafromServer()
        expect.fulfill()
        wait(for: [expect], timeout: 5)
        XCTAssertEqual(demoViewmodel.data?.name , "Name")
    }

}
