//
//  ViewController.swift
//  Employee-Manager App
//
//  Created by Salwa on 4/1/18.
//  Copyright © 2018 Developers2Be. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var inputsalary : Int = 0
    var salary : Int = 0
    
    
    
    @IBOutlet weak var salaryTextField: UITextField!
    
    @IBAction func salaryTF(_ sender: Any) {
        
        if (salaryTextField.text?.isEmpty)!{
            
        salaryLabel.text = "please enter salary"
        salary = 0
            
        }else {
        
            salaryLabel.text = ""
            
        }
        
        
    }
    
    
    @IBOutlet weak var salaryLabel: UILabel!
    
  
    @IBAction func employeeButton(_ sender: Any) {
        
       
         var employee = Employee()
          salary = GetText()
        salaryLabel.text =  String (employee.getSalary(inputSalary: salary ))
        

    }
    
    
    @IBAction func managerButton(_ sender: Any) {
        
    
        var manager = Manager()
         salary = GetText()
       salaryLabel.text =  String (manager.getSalary(inputSalary: salary ))
       
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        salaryTextField.text = "0"

        
    }
 
    func GetText() -> Int {
        
             inputsalary = Int ((salaryTextField.text) ?? "") ?? 0
        
       return inputsalary
    }
}
