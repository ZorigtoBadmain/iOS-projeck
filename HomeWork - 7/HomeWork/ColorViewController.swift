//
//  ColorViewController.swift
//  HomeWork
//
//  Created by Зоригто Бадмаин on 17.05.2020.
//  Copyright © 2020 Зоригто Бадмаин. All rights reserved.
//

import UIKit

protocol ColorViewControllerDelegate{
    func setColor(_ color: String)
}
class ColorViewController: UIViewController {

    var color = ""
    
    var delegate: ColorViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func greenButton(_ sender: Any) {
        color = "green"
        delegate?.setColor(color)
    }
    
    @IBAction func yellowButton(_ sender: Any) {
        color = "yellow"
        delegate?.setColor(color)
    }
    
    @IBAction func purpleButton(_ sender: Any) {
        color = "purple"
        delegate?.setColor(color)
    }
    
   
}
