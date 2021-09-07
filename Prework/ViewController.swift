//
//  ViewController.swift
//  Prework
//
//  Created by user205877 on 9/4/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tip: UILabel!
    @IBOutlet weak var billAmount: UILabel!
    @IBOutlet weak var total: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Color
        let backgroundPrimary = UIColor(named: "backgroundPrimary")
        let backgroundSecondary = UIColor(named: "backgroundSecondary")
        let textPrimary = UIColor(named: "textPrimary")
        let textSecondary = UIColor(named: "textSecondary")
        
        tipAmountLabel.textColor = textPrimary
        tip.textColor = textPrimary
        billAmount.textColor = textPrimary
        billAmountTextField.textColor = textPrimary
        total.textColor = textPrimary
        
        billAmountTextField.backgroundColor = backgroundPrimary
        tipControl.backgroundColor = backgroundSecondary
        self.view.backgroundColor = backgroundPrimary
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text fielld input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }
    

}

