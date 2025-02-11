//
//  ViewController.swift
//  Mobile1_A6_Currency
//
//  Created by Jake Gordin on 2/11/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var error_label: UILabel!
    @IBOutlet weak var USD_field: UITextField!
    var gbpSwitch = true
    var jpySwitch = true
    var eurSwitch = true
    var mxnSwitch = true
    var usdAmount: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func GBP_Switch(_ sender: Any) {
    }
    @IBAction func JPY_Switch(_ sender: Any) {
    }
    @IBAction func EUR_Switch(_ sender: Any) {
    }
    @IBAction func MXN_Switch(_ sender: Any) {
    }
    @IBAction func convert_Button(_ sender: Any) {
        if (validateUSD() == true) {
            error_label.isHidden = true
        }
        else {
            error_label.isHidden = false
        }
    }
    func validateUSD() -> Bool {
        let fieldVal = Int(USD_field.text!) ?? 0
        if (fieldVal <= 0) {
            print(fieldVal)
            return false
        }
        else {
            print(fieldVal)
            return true
        }
    }
}

