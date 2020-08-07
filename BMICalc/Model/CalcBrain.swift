//
//  CalcBrain.swift
//  BMICalc
//
//  Created by Harrison Gittos on 07/08/2020.
//  Copyright © 2020 Harrison Gittos. All rights reserved.
//

import UIKit

struct CalcBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        let value = weight / pow(height, 2);
        
        var color: UIColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1);
        var message = "Perfect! Keep it up!";
        if value < 18.5 {
            color = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1);
            message = "Eat something";
        } else if value > 24.9 {
            color = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1);
            message = "Go for a run!"
        }
        bmi = BMI(value: value, advice: message, color: color);
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0);
    }
    
    func getAdvice() -> String{
        if let bmiOptional = bmi {
            return bmiOptional.advice;
        }
        return "No advice";
    }
    
    func getColor() -> UIColor {
        if let bmiOptional = bmi {
            return bmiOptional.color;
        }
        return .orange;
    }
}
