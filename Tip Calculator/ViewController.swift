//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Paris Smith on 12/21/15.
//  Copyright © 2015 Paris Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billFeild: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.18,0.20, 0.22]
        let tipPercentage = tipPercentages [tipControl.selectedSegmentIndex]
        
        
        let billAmount = NSString(string: billFeild.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\total)"
        
        tipLabel.text = String( format: "$%.2f", tip)
        totalLabel.text = String( format: "$%.2f", total)
        
        
        
    }
    
    @IBAction func onTap(sender: AnyObject) { view.endEditing(true)
        
    }
    
    }


