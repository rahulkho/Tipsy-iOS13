//
//  ViewController.swift
//  Tipsy
//
//  Created by RAHUL KHOKHARIYA on 02/09/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLable: UILabel!
    
    var tip = 0.10
    var numberOfPeople = 2
    var finalResult = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        splitNumberLable.text = String(format: "%.0f", sender.value)
        
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        let buttonTitleMinusPercentageSign = Double(buttonTitle.dropLast())!
        
        tip = buttonTitleMinusPercentageSign / 100
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTextField.text!

        if bill != "" {
            
            let result = Double(bill)! * (1 + tip) / Double(numberOfPeople)
            finalResult = String(format: "%.2f", result)
        }
        
        self.performSegue(withIdentifier: "goToResult", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToResult") {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.result = (finalResult)
            destinationVC.tip = Int(tip * 100)
            destinationVC.split = numberOfPeople
        }
    }
    
}

