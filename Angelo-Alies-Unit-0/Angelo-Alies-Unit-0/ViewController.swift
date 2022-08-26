//
//  ViewController.swift
//  Angelo-Alies-Unit-0
//
//  Created by Angelo Alies on 8/26/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentges = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentges[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        //update Tipping Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    

}

