//
//  DemoViewModel.swift
//  Mvvm_demo
//
//  Created by Avinash on 22/05/21.
//  Copyright © 2021 AlpenGlowTechnologies. All rights reserved.
//

import Foundation
class DemoViewModel: NSObject {
    
    var service: UserServiceProtocol!
    var dataBindingValue: (() -> ()) = {}
    var data: Employee! {
        didSet {
            self.dataBindingValue()
        }
        
    }
    init(userservice: UserServiceProtocol = ServiceDemo()) {
        self.service = userservice
        super.init()
        self.getDatafromServer()
    }
   
    func getDatafromServer() {
           self.service.getDatafromServer { (responseData) in
            self.data = responseData
        }
    }
}
