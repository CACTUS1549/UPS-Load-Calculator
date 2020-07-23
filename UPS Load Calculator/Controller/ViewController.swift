//
//  ViewController.swift
//  UPS Load Calculator
//
//  Created by Deepak Reddy on 22/07/20.
//  Copyright © 2020 Deepak Reddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstSerialNumLabel: UILabel!{
        didSet{
            firstSerialNumLabel.layer.borderColor = UIColor.systemBlue.cgColor
            firstSerialNumLabel.layer.borderWidth = 1
            firstSerialNumLabel.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var secondSerialNumLabel: UILabel!{
        didSet{
            secondSerialNumLabel.layer.borderColor = UIColor.systemBlue.cgColor
            secondSerialNumLabel.layer.borderWidth = 1
            secondSerialNumLabel.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var thirdSerialNumLabel: UILabel!{
        didSet{
            thirdSerialNumLabel.layer.borderColor = UIColor.systemBlue.cgColor
            thirdSerialNumLabel.layer.borderWidth = 1
            thirdSerialNumLabel.layer.cornerRadius = 10
        }
    }
    
    @IBOutlet weak var stepsHeading: UILabel!{
        didSet{
            stepsHeading.layer.borderColor = UIColor.systemBlue.cgColor
            stepsHeading.layer.borderWidth = 1
            stepsHeading.layer.cornerRadius = 10
        }
    }
    
    @IBOutlet weak var goToCalculatorButton: UIButton!{
        didSet{
            goToCalculatorButton.layer.borderColor = UIColor.systemBlue.cgColor
            goToCalculatorButton.layer.borderWidth = 1
            goToCalculatorButton.layer.cornerRadius = 12
        }
    }
    @IBAction func goToCalculatorButton(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
}

