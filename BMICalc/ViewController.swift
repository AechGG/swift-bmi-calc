//
//  ViewController.swift
//  BMICalc
//
//  Created by Harrison Gittos on 06/08/2020.
//  Copyright © 2020 Harrison Gittos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightChanged(_ sender: UISlider) {
        let height: Float = sender.value;
        heightLabel.text = "\(String(format: "%.2f", height))m"
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        let weight: Float = sender.value;
        weightLabel.text = "\(String(format: "%.2f", weight))Kg"
    }
}

