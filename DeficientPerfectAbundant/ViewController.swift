//
//  ViewController.swift
//  DeficientPerfectAbundant
//
//  Created by Hartley, Keira on 2020-03-09.
//  Copyright © 2020 Hartley, Keira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK:Properties
    @IBOutlet weak var userInput: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    
    
    //MARK:Methods
    
    @IBAction func submit(_ sender: Any) {
        
        guard let inputUser = userInput.text, inputUser.count > 0 else {
            result.text = "Please input a number"
            return
        }
        
        guard let inputAsInt = Int(inputUser) else{
            result.text = "Please enter an actaul integer"
            return
        }
        guard inputAsInt>=1,inputAsInt<=32500 else {
            if inputAsInt<1 {
                result.text = "1 is a deficient number"
            }else if inputAsInt>32500{
                result.text = "32500 is a deficient number"
            }
            return
        }
        
        func sumOfDivsors(of number:Int)->Int{
            var sum = 0
            for d in 1...Int(number/2){
                if number%d==0 {
                    sum += d
                }
            }
             return sum
        }
        
        if sumOfDivsors(of: inputAsInt) > inputAsInt {
            result.text = "\(inputAsInt) is an abundant number."
            
        }else if sumOfDivsors(of: inputAsInt) < inputAsInt {
            result.text = "\(inputAsInt) is a deficient number."
            
        }else {
            result.text = "\(inputAsInt) is a perfect number."
        }
        
        
    }
    
    
    
    
}

