//
//  SecondViewController.swift
//  BMICalc
//
//  Created by Harrison Gittos on 07/08/2020.
//  Copyright © 2020 Harrison Gittos. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0";
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .red;
        
        let label: UILabel = UILabel();
        label.text = bmiValue;
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50);
        view.addSubview(label);
    }
}
