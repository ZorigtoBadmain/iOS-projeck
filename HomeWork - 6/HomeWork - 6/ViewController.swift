//
//  ViewController.swift
//  HomeWork - 6
//
//  Created by Зоригто Бадмаин on 18.05.2020.
//  Copyright © 2020 Зоригто Бадмаин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBAction func actionButton(_ sender: Any) {
        textLabel.text = "\(textLabel.text!) \(textField.text!)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

