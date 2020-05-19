//
//  ButtonViewController.swift
//  HomeWork
//
//  Created by Зоригто Бадмаин on 17.05.2020.
//  Copyright © 2020 Зоригто Бадмаин. All rights reserved.
//

import UIKit

protocol ButtonViewControllerDelegate {
    func setColor(_ color: String)
}

class ButtonViewController: UIViewController {
    
    var delegate: ButtonViewControllerDelegate?

    @IBOutlet weak var text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func greenButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        text.text = "Выбран зеленый"
        delegate?.setColor(text.text!)
    }
    
    @IBAction func blueButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        text.text = "Выбран синий"
        delegate?.setColor(text.text!)
    }
    
    
    @IBAction func redButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        text.text = "Выбран красный"
        delegate?.setColor(text.text!)
    }
}
