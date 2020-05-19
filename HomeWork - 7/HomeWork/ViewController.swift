//
//  ViewController.swift
//  HomeWork
//
//  Created by Зоригто Бадмаин on 17.05.2020.
//  Copyright © 2020 Зоригто Бадмаин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ButtonViewController, segue.identifier == "showButtonView"{
            vc.delegate = self
        }
    }

}
extension ViewController: ButtonViewControllerDelegate{
    func setColor(_ color: String){
        textLabel.text = "\(color)"
    }
}

