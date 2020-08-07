//
//  ViewController.swift
//  BMICalc
//
//  Created by Harrison Gittos on 06/08/2020.
//  Copyright © 2020 Harrison Gittos. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calcBrain: CalcBrain = CalcBrain();
    
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
        
        calcBrain.calculateBMI(height, weight);
        
        self.performSegue(withIdentifier: "goToResult", sender: self);
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController;
            destinationVC.bmiValue = calcBrain.getBMIValue();
            destinationVC.advice = calcBrain.getAdvice();
            destinationVC.color = calcBrain.getColor();
        }
    }
}

