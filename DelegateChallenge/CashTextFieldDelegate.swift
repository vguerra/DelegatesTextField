//
//  CashTextFieldDelegate.swift
//  DelegateChallenge
//
//  Created by Victor Guerra on 27/03/15.
//  Copyright (c) 2015 Victor Guerra. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate : NSObject, UITextFieldDelegate {
    var value:Int = 0
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        if string == "" {
            value = value / 10
            textField.text = convertToCurrency(value)
            return false
        }
        if let newVal = string.toInt() {
            value = value*10 + newVal
            textField.text = convertToCurrency(value)
            return false
        }
        return false
    }
    
    func convertToCurrency(value: Int) -> String? {
        let formater = NSNumberFormatter()
        formater.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        let decimalNum = Double(value)/100
        return formater.stringFromNumber(decimalNum)
    }
    
    func textFieldShouldClear(textField: UITextField) -> Bool {
        value = 0
        return true
    }
}