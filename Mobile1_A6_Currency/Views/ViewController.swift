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
    var conversionLogic = ConversionLogic()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func GBP_Switch(_ sender: UISwitch) {
        if (sender.isOn) {
            conversionLogic.setGBPSwitch(true)
        }
        else {
            conversionLogic.setGBPSwitch(false)
        }
    }
    @IBAction func JPY_Switch(_ sender: UISwitch) {
        if (sender.isOn) {
            conversionLogic.setJPYSwitch(true)
        }
        else {
            conversionLogic.setJPYSwitch(false)
        }
    }
    @IBAction func EUR_Switch(_ sender: UISwitch) {
        if (sender.isOn) {
            conversionLogic.setEURSwitch(true)
        }
        else {
            conversionLogic.setEURSwitch(false)
        }
    }
    @IBAction func MXN_Switch(_ sender: UISwitch) {
        if (sender.isOn) {
            conversionLogic.setMXNSwitch(true)
        }
        else {
            conversionLogic.setMXNSwitch(false)
        }
    }
    @IBAction func convert_Button(_ sender: Any) {
        if (validateUSD() == true) {
            error_label.isHidden = true
            conversionLogic.setUSD(Int(USD_field.text!) ?? 0)
            conversionLogic.calcConversion()
            self.performSegue(withIdentifier: "toConversionResult", sender:self)
        }
        else {
            error_label.isHidden = false
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toConversionResult") {
            let navigation = segue.destination as! ConversionView
            navigation.usdAmount = conversionLogic.usdAmount
            navigation.gbpSwitch = conversionLogic.gbpSwitch
            navigation.jpySwitch = conversionLogic.jpySwitch
            navigation.eurSwitch = conversionLogic.eurSwitch
            navigation.mxnSwitch = conversionLogic.mxnSwitch
            navigation.gbpAmount = conversionLogic.gbpAmount
            navigation.jpyAmount = conversionLogic.jpyAmount
            navigation.eurAmount = conversionLogic.eurAmount
            navigation.mxnAmount = conversionLogic.mxnAmount
        }
    }
    func validateUSD() -> Bool {
        let fieldVal = Int(USD_field.text!) ?? 0
        if (fieldVal <= 0) {
            return false
        }
        else {
            return true
        }
    }
}

