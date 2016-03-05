//
//  ViewController.swift
//  dollar converter
//
//  Created by John Rikard Nilsen on 5/3/16.
//  Copyright © 2016 John Rikard Nilsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dollarLabel: UILabel!
    @IBOutlet weak var euroTextField: UITextField!
    
    let course = 0.908130

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clear(sender: AnyObject) {
        euroTextField.text = ""
        dollarLabel.text = "w000t"
    }
    @IBAction func editChanged(sender: AnyObject) {
        if let euroString = euroTextField.text {
            let euros = Double(euroString) ?? 0
            let dollars = euros * course
            dollarLabel.text = "$" + String(format: "%.2f", dollars)
        }
    }
}

