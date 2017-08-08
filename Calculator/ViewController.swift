//
//  ViewController.swift
//  Calculator
//
//  Created by Invariant Telecom on 8/6/17.
//  Copyright © 2017 builtechsoftware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNumber:Bool = true;
    var firstValue:Double = 0.0;
    
    var secondNumber:Bool=true;
    var secondValue:Double = 0.0;
    
    var Operator:String = "";
    
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
        
        if firstNumber {
            inputTextField.text = inputTextField.text! + String(sender.tag);
            firstValue = Double(inputTextField.text!) ?? 0.0;
        } else if secondNumber {
            inputTextField.text = inputTextField.text! + String(sender.tag);
//            let tvalue = inputTextField.text!;
//            print(gvalue);
            
            let finalValue = inputTextField.text!.replacingOccurrences(of:"\(Int(firstValue))"+Operator, with: "")
            print(finalValue);
            secondValue = Double(finalValue) ?? 0.0;
        }
        
        
    }
    
    @IBAction func operationUIButton(_ sender: UIButton) {
        
        if sender.tag == 10 {
            inputTextField.text = inputTextField.text! + ".";
        } else if sender.tag == 11 {
            inputTextField.text = "";
        } else if sender.tag == 12 {
            let sqrtValue=sqrt(Double(inputTextField.text!)!);
            inputTextField.text = String(sqrtValue);
        } else if sender.tag == 13 { // devision
            firstNumber=false;
            Operator = "/" ;
            inputTextField.text = inputTextField.text! + Operator
            
        } else if sender.tag == 14 { // mutiple
            
            firstNumber=false;
            Operator = "*" ;
            inputTextField.text = inputTextField.text! + Operator
            
        } else if sender.tag == 15 { // subtract
            
            firstNumber=false;
            Operator = "-" ;
            inputTextField.text = inputTextField.text! + Operator
            
        } else if sender.tag == 16 { // add
            firstNumber=false;
            Operator = "+" ;
            inputTextField.text = inputTextField.text! + Operator
        } else if sender.tag == 17 { // result
            
            if Operator == "+" {
                firstValue = calculator.Add(firstNumber: firstValue, secondNumber: secondValue);
                inputTextField.text = String(Int(firstValue))
            } else if Operator == "-" {
                firstValue = calculator.subtract(firstNumber: firstValue, secondNumber: secondValue);
                inputTextField.text = String(Int(firstValue))
            } else if Operator == "*" {
                firstValue = calculator.Multiple(firstNumber: firstValue, secondNumber: secondValue);
                inputTextField.text = String(Int(firstValue))
            } else if Operator == "/" {
                firstValue = calculator.Division(firstNumber: firstValue, secondNumber: secondValue);
                inputTextField.text = String(Int(firstValue))
            }
        }
    }
    

}

