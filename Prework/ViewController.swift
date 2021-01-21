//
//  ViewController.swift
//  Prework
//
//  Created by Brendan Lee on 1/21/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var billAmountTextField: UITextField!;
    @IBOutlet weak var tipAmountLabel: UILabel!;
    @IBOutlet weak var tipControl: UISegmentedControl!;
    @IBOutlet weak var totalLabel: UILabel!;
    
    //Slider stuff
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBAction func sliderChange(_ sender: UISlider) {
        let curr = Double(sender.value) * 100
        sliderLabel.text = String(format: "%.0f%%", curr)
        let bill = Double(billAmountTextField.text!) ?? 0;
        let tip = bill * Double(sender.value)
        let total = tip + bill
        
        tipAmountLabel.text = String(format: "%.2f", tip);
        totalLabel.text = String(format: "%.2f",total);
    }
    
    
    // Calculate tip
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0;
        let tipPercentages = [0.15, 0.18, 0.20];
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex];
        let total = tip + bill;
        
        tipAmountLabel.text = String(format: "%.2f", tip);
        totalLabel.text = String(format: "%.2f",total);
    }
    
}
