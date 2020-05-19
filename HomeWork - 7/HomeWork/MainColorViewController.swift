//
//  MainColorViewController.swift
//  HomeWork
//
//  Created by Зоригто Бадмаин on 17.05.2020.
//  Copyright © 2020 Зоригто Бадмаин. All rights reserved.
//

import UIKit

class MainColorViewController: UIViewController {
    var child: ColorViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func greenButton(_ sender: Any) {
        child?.view.backgroundColor = .green
    }
    @IBAction func yellowButton(_ sender: Any) {
        child?.view.backgroundColor = .yellow
    }
    @IBAction func purpleButton(_ sender: Any) {
        child?.view.backgroundColor = .purple
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ColorViewController, segue.identifier == "showButtonColor"{
            self.child = vc
            vc.delegate = self
        }
    }
}
extension MainColorViewController: ColorViewControllerDelegate{
    func setColor(_ color: String) {
        switch color{
        case "green": view.backgroundColor = .green
        case "yellow": view.backgroundColor = .yellow
        case "purple": view.backgroundColor = .purple
        default: view.backgroundColor = .white
        }
    }
}
