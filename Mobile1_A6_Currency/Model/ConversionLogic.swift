//
//  ConversionLogic.swift
//  Mobile1_A6_Currency
//
//  Created by Jake Gordin on 2/11/25.
//

import Foundation

struct ConversionLogic {
    var gbpSwitch = true
    var jpySwitch = true
    var eurSwitch = true
    var mxnSwitch = true
    var usdAmount: Int = 0
    let gbpRate : Double = 0.8
    let jpyRate : Double = 152.45
    let eurRate : Double = 0.97
    let mxnRate : Double = 20.56
    var gbpAmount : Double = 0.0
    var jpyAmount : Double = 0.0
    var eurAmount : Double = 0.0
    var mxnAmount : Double = 0.0
    mutating func setGBPSwitch(_ newValue: Bool) {
        if (newValue == true) {
            gbpSwitch = true
        }
        else {
            gbpSwitch = false
        }
    }
    mutating func setJPYSwitch(_ newValue: Bool) {
        if (newValue == true) {
            jpySwitch = true
        }
        else {
            jpySwitch = false
        }
    }
    mutating func setEURSwitch(_ newValue: Bool) {
        if (newValue == true) {
            eurSwitch = true
        }
        else {
            eurSwitch = false
        }
    }
    mutating func setMXNSwitch(_ newValue: Bool) {
        if (newValue == true) {
            mxnSwitch = true
        }
        else {
            mxnSwitch = false
        }
    }
    mutating func setUSD(_ newValue: Int) {
        usdAmount = newValue
    }
    mutating func calcGBP() {
        let raw = (Double(usdAmount) * gbpRate)
        gbpAmount = (round(raw * 100) / 100.0)
    }
    mutating func calcJPY() {
        let raw = (Double(usdAmount) * jpyRate)
        jpyAmount = (round(raw * 100) / 100.0)
    }
    mutating func calcEUR() {
        let raw = (Double(usdAmount) * eurRate)
        eurAmount = (round(raw * 100) / 100.0)
    }
    mutating func calcMXN() {
        let raw = (Double(usdAmount) * mxnRate)
        mxnAmount = (round(raw * 100) / 100.0)
    }
    mutating func calcConversion() {
        if (gbpSwitch == true) {
            calcGBP()
        }
        if (jpySwitch == true) {
            calcJPY()
        }
        if (eurSwitch == true) {
            calcEUR()
        }
        if (mxnSwitch == true) {
            calcMXN()
        }
    }
}
