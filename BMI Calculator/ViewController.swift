//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Evgeniy Uskov on 30/05/2019.
//  Copyright © 2019 Evgeniy Uskov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var massField: UITextField!
    @IBOutlet weak var heighField: UITextField!
    @IBOutlet weak var getBMIButton: UIButton!
    @IBOutlet weak var BMILabel: UILabel!
    
    @IBOutlet weak var dontKnowLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func BMIButtonPressed(_ sender: Any) {
        if massField.text == nil{
            return
        }
        if heighField.text == nil{
            return
        }
        let doubleMass = Double(massField.text!)
        let doubleHeigh = Double(heighField.text!)
        
        let result = getBMI(mass: doubleMass!, heigh: doubleHeigh!)
        BMILabel.text = result
        dontKnowLabel.text = result
        
    }
    
    func getBMI (mass: Double, heigh: Double) -> String  {
        let bmi: Double = mass / pow(heigh,2)
        
        if bmi > 25 {
            return "BMI is: \(bmi) you are overweight" }
        else
            if bmi > 18.5 {
                return "BMI is: \(bmi) you are normal weight" }
        return "BMI is \(bmi) you are underweight"
    }
}

