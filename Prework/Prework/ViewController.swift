//
//  ViewController.swift
//  Prework
//
//  Created by Ushna Arshid on 12/23/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UILabel!
    
    @IBOutlet weak var tipPrcentagelabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControler: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any) {
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.5, 0.18, 0.2]
            
        ///calculate tip and total
        let tip = bill * tipPercentages[tipControler.selectedSegmentIndex]
        let total = bill + tip
        tipPrcentagelabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

