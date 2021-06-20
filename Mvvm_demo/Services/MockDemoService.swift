//
//  MockDemoService.swift
//  Mvvm_demo
//
//  Created by Avinash on 01/06/21.
//  Copyright © 2021 AlpenGlowTechnologies. All rights reserved.
//

import UIKit

class MockDemoService: UserServiceProtocol {
    func getDatafromServer(completion: @escaping (Employee?) -> ()) {
        //
        completion(Employee(name: "Name", code: "12344"))
    }
    

}
