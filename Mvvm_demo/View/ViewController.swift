//
//  ViewController.swift
//  Mvvm_demo
//
//  Created by Avinash on 22/05/21.
//  Copyright © 2021 AlpenGlowTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var mymodel: DemoViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getDtafromServer()
        // Do any additional setup after loading the view.
    }
    
    func getDtafromServer () {
        mymodel = .init(userservice: ServiceDemo())
        self.mymodel.dataBindingValue = {
            self.refreshView()
        }
    }
   
    func refreshView() {
        print("ViewRefreshed")
    }
}

