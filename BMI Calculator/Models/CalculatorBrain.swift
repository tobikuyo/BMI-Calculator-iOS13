//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Tobi Kuyoro on 10/11/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / powf(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }

    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
}
}
