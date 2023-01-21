//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Samar Mitra on 21/11/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var bgImageLabel: UIImageView!

    var bmiValue: String? 
    var bmiAdvice: String?
    var bmiBgColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        bgImageLabel.backgroundColor = bmiBgColor
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
   
}
