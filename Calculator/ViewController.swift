//
//  ViewController.swift
//  Calculator
//
//  Created by Invariant Telecom on 8/6/17.
//  Copyright © 2017 builtechsoftware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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

    
    @IBAction func ZeoButton(_ sender: Any) {
        
    }

    @IBAction func pointButton(_ sender: Any) {
    }
   
    @IBAction func oneButton(_ sender: Any) {
    }
    
    @IBAction func twoButton(_ sender: Any) {
    }
    
    
    @IBAction func threeButton(_ sender: Any) {
    }
    
    @IBAction func fourButton(_ sender: Any) {
    }
    
    @IBAction func fiveButton(_ sender: Any) {
    }
    
    @IBAction func sixButton(_ sender: Any) {
    }
    
    @IBAction func sevenButton(_ sender: Any) {
    }
    
    
    @IBAction func eightButton(_ sender: Any) {
    }
    
    @IBAction func nineButton(_ sender: Any) {
    }
    
    @IBAction func minasButton(_ sender: Any) {
    }
    
    @IBAction func plusButton(_ sender: Any) {
    }
    
    @IBAction func resultButton(_ sender: Any) {
    }
}

