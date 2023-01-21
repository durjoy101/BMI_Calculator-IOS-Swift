//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Samar Mitra on 21/11/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func wightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(h: height, w: weight)
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultViewController
        destinationVC.bmiValue = calculatorBrain.getBMI()
        destinationVC.bmiAdvice = calculatorBrain.bmi?.advice ?? "No Advice"
        destinationVC.bmiBgColor = calculatorBrain.bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) 
        
    }
}

