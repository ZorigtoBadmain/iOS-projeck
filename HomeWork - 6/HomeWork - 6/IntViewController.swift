//
//  IntViewController.swift
//  HomeWork - 6
//
//  Created by Зоригто Бадмаин on 18.05.2020.
//  Copyright © 2020 Зоригто Бадмаин. All rights reserved.
//

import UIKit

class IntViewController: UIViewController {
    
    
    @IBOutlet weak var integerTextField: UITextField!
    
    @IBOutlet weak var resultTextLabel: UILabel!
    
   
    @IBAction func actionIntegerResult(_ sender: Any) {
        if let num = Int(integerTextField.text ?? ""){
            resultTextLabel.text = "\(num * num)"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
