//
//  ViewController.swift
//  Is it Prime
//
//  Created by zakaria afir on 12/10/2017.
//  Copyright © 2017 ZakariaAfir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var numberField: UITextField!
    
    @IBOutlet weak var resultNumber: UILabel!
    
    @IBAction func submitButton(_ sender: Any) {
        if let numberEnterredString = numberField.text {
            
            let numberEnterredInteger = Int(numberEnterredString)
            
            if let number = numberEnterredInteger {
                
                var isPrime = true
                
                var i = 2
                
                while i < number {
                    
                    if number % i == 0{
                        isPrime = false
                        break
                    }
                    i = i + 1
                }
                
                if isPrime {
                    resultNumber.text = "\(number) is a Prime"
                } else {
                    resultNumber.text = "\(number) is NOT a Prime !"
                }
                
            } else {
                resultNumber.text = "Please enter a positive whole number"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

