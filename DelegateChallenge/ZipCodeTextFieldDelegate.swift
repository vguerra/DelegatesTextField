//
//  ZipCodeTextFieldDelegate.swift
//  DelegateChallenge
//
//  Created by Victor Guerra on 27/03/15.
//  Copyright (c) 2015 Victor Guerra. All rights reserved.
//

import Foundation
import UIKit

/// Delegate class for ZipCode TextField

class ZipCodeTextFieldDelegate : NSObject, UITextFieldDelegate {

    /// Maximum lenght of ZipCode
    let fieldMaxLength = 5
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        let oldTextLength = count(textField.text)
        // verifying that the range is valid (needed when undoing a privous invalidated paste)
        if (oldTextLength < range.length + range.location ) {
            return false
        }
        
        // If we reached max lenght and it is not backspace.
        let insertedStringCount = count(string)
        if count(textField.text) + insertedStringCount > fieldMaxLength {
            return false
        }
        
        // We let it update the text only if it is valid digit or backspace.
        if string == "" || string.toInt() != nil {
            return true
        } else {
            return false
        }
    }
    
    // We dont end edit session unless we have a valid ZipCode
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        return (count(textField.text) == fieldMaxLength)
    }
}