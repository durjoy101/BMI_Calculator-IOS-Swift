//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Samar Mitra on 21/11/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(h: Float , w: Float) {
        let bmiValue = w / (h*h)
        if bmiValue <= 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more Rice!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValue > 18.5 && bmiValue < 24.5 {
            bmi = BMI(value: bmiValue, advice: "You are Fit!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
    }
    func getBMI() -> String {
        let bmiDecimaltoString = String(format: "%.2f", bmi?.value ?? 0.0)
        return bmiDecimaltoString
    }
    
}
