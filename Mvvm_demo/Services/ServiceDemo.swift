//
//  ServiceDemo.swift
//  Mvvm_demo
//
//  Created by Avinash on 22/05/21.
//  Copyright © 2021 AlpenGlowTechnologies. All rights reserved.
//

import UIKit

protocol  UserServiceProtocol {
    func getDatafromServer(completion: @escaping (Employee?) -> ())

}
class ServiceDemo: UserServiceProtocol {
    
    private let sourcesURL = URL(string: "http://dummy.restapiexample.com/api/v1/employees")!
    
    public func getDatafromServer(completion: @escaping (Employee?) -> ()){
        
        URLSession.shared.dataTask(with: sourcesURL) { (data, response, error) in
            if let serverData = data {
                let decodeer  = JSONDecoder()
                do {
                    let valur = try decodeer.decode(Employee.self, from: serverData)
                    completion(valur)
                } catch {
                    print("there is some exceptions..")
                }
            }
            completion(nil)
        }.resume()
    }
}
