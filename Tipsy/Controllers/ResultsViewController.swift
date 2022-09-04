//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by RAHUL KHOKHARIYA on 02/09/2022.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLable: UILabel!
    @IBOutlet weak var settingsLable: UILabel!
    
    var result = "0.0"
    var tip = 10
    var split = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLable.text = result
        settingsLable.text = "Split between \(split) people, with \(tip)% tip."

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
