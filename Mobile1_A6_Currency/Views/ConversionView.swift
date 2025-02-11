//
//  ConversionView.swift
//  Mobile1_A6_Currency
//
//  Created by Jake Gordin on 2/11/25.
//

import UIKit

class ConversionView: UIViewController {
    @IBOutlet weak var usd_amount_label: UILabel!
    @IBOutlet weak var gbp_amount_label: UILabel!
    @IBOutlet weak var jpy_amount_label: UILabel!
    @IBOutlet weak var eur_amount_label: UILabel!
    @IBOutlet weak var mxn_amount_label: UILabel!
    @IBOutlet weak var gbp_heading_label: UILabel!
    @IBOutlet weak var jpy_heading_label: UILabel!
    @IBOutlet weak var eur_heading_label: UIStackView!
    @IBOutlet weak var mxn_heading_label: UILabel!
    var usdAmount = 0
    var gbpSwitch = true
    var jpySwitch = true
    var eurSwitch = true
    var mxnSwitch = true
    var gbpAmount : Double = 0.0
    var jpyAmount : Double = 0.0
    var eurAmount : Double = 0.0
    var mxnAmount : Double = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        usd_amount_label.text = "USD Amount: $ \(usdAmount)"
        gbp_amount_label.text = String(Int(gbpAmount))
        jpy_amount_label.text = String(Int(jpyAmount))
        eur_amount_label.text = String(Int(eurAmount))
        mxn_amount_label.text = String(Int(mxnAmount))
        if (gbpSwitch == true) {
            gbp_heading_label.isHidden = false
            gbp_amount_label.isHidden = false
        }
        else {
            gbp_heading_label.isHidden = true
            gbp_amount_label.isHidden = true
        }
        if (jpySwitch == true) {
            jpy_heading_label.isHidden = false
            jpy_amount_label.isHidden = false
        }
        else {
            jpy_heading_label.isHidden = true
            jpy_amount_label.isHidden = true
        }
        if (eurSwitch == true) {
            eur_heading_label.isHidden = false
            eur_amount_label.isHidden = false
        }
        else {
            eur_heading_label.isHidden = true
            eur_amount_label.isHidden = true
        }
        if (mxnSwitch == true) {
            mxn_heading_label.isHidden = false
            mxn_amount_label.isHidden = false
        }
        else {
            mxn_heading_label.isHidden = true
            mxn_amount_label.isHidden = true
        }
        
        // Do any additional setup after loading the view.
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
