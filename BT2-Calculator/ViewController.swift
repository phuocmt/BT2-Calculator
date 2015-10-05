//
//  ViewController.swift
//  BT2-Calculator
//
//  Created by phuoc on 10/2/15.
//  Copyright © 2015 phuocmt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isTypingNumber = false
    var firstNumber: Int!
    var secondNumber: Int!
    var operation = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        firstNumber = 0
        secondNumber = 0
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var calculatorDisplay: UILabel!

    @IBAction func numberTapped(sender: AnyObject) {
        let number = sender.currentTitle
        
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        } else
        {
            calculatorDisplay.text = number
            isTypingNumber = true
        }
    }
   
    @IBAction func calculationTapped(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = Int(calculatorDisplay.text!)
        operation = sender.currentTitle!!
    }
    
    @IBAction func equalsTapped(sender: AnyObject) {
        isTypingNumber = false
        var result = 0
        secondNumber = Int(calculatorDisplay.text!)
        
        if operation == "+" {
            result = firstNumber + secondNumber
        } else if operation == "-" {
            result = firstNumber - secondNumber
        }
        
        calculatorDisplay.text = "\(result)"
    }


}

