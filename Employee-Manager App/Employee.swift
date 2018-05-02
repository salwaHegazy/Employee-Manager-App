//
//  Employee.swift
//  Employee-Manager App
//
//  Created by Salwa on 4/1/18.
//  Copyright © 2018 Developers2Be. All rights reserved.
//

import UIKit

class Employee : Person {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    override func getSalary (inputSalary : Int) -> Int {
        
      let newSalary  = inputSalary * 100
      
       
          return newSalary
    }
    
   }
