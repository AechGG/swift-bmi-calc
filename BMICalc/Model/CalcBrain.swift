//
//  CalcBrain.swift
//  BMICalc
//
//  Created by Harrison Gittos on 07/08/2020.
//  Copyright © 2020 Harrison Gittos. All rights reserved.
//

import Foundation

struct CalcBrain {
    var bmiValue: Float?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        bmiValue = weight / pow(height, 2);
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmiValue ?? 0.0);
    }
}
