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
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
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
        weightLabel.text = "\(String(format: "%.0f", weight))Kg"
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSlider.value;
        let weight = weightSlider.value;
        let bmi = weight / pow(height, 2);
        
        let secondVC = SecondViewController();
        secondVC.bmiValue = String(format: "%.1f", bmi)
        self.present(secondVC, animated: true, completion: nil);
    }
}

