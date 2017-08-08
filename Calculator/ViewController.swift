//
//  ViewController.swift
//  Calculator
//
//  Created by Invariant Telecom on 8/6/17.
//  Copyright © 2017 builtechsoftware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var inputTextField: UITextField!
    let calculator = Calculator();

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(calculator.Add(firstNumber:10.0 ,secondNumber:10.0));
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func NumberInputUIButton(_ sender: UIButton) {
        inputTextField.text = inputTextField.text! + String(sender.tag);
        
    }
    
    @IBAction func operationUIButton(_ sender: UIButton) {
        
        if sender.tag == 11 {
            inputTextField.text = "";
        } else if sender.tag == 12 {
            let sqrtValue=sqrt(Double(inputTextField.text!)!);
            inputTextField.text = String(sqrtValue);
        }
    }
    

}

