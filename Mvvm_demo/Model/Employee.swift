//
//  Employee.swift
//  Mvvm_demo
//
//  Created by Avinash on 22/05/21.
//  Copyright © 2021 AlpenGlowTechnologies. All rights reserved.
//

import UIKit

class Employee: Codable {
    let name: String
    let code: String

   public init(name: String, code: String) {
    self.name = name
    self.code = code
    }
}
