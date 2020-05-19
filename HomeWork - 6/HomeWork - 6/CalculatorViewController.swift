//
//  CalculatorViewController.swift
//  HomeWork - 6
//
//  Created by Зоригто Бадмаин on 18.05.2020.
//  Copyright © 2020 Зоригто Бадмаин. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    
    @IBOutlet weak var numberOneTextField: UITextField!
    
    
    @IBOutlet weak var operationTextField: UITextField!
    
    
    @IBOutlet weak var numberTwoTextField: UITextField!
    
    
    @IBOutlet weak var resultTextLabel: UILabel!
    
    
    @IBAction func actionButtonOperation(_ sender: Any) {
        if let num1 = Int(numberOneTextField.text ?? ""), let num2 = Int(numberTwoTextField.text ?? ""), let operation = operationTextField.text{
            switch operation{
            case "*": resultTextLabel.text = "\(num1 * num2)"
            case "/": resultTextLabel.text = "\(num1 / num2)"
            case "+": resultTextLabel.text = "\(num1 + num2)"
            case "-": resultTextLabel.text = "\(num1 - num2)"
            default: resultTextLabel.text = "Некорректные данные"
            }
            }else{
            resultTextLabel.text = "Некорректные данные"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
