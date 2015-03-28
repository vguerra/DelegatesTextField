//
//  ViewController.swift
//  DelegateChallenge
//
//  Created by Victor Guerra on 27/03/15.
//  Copyright (c) 2015 Victor Guerra. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!
    @IBOutlet weak var lockTextFieldSwitch: UISwitch!
    @IBOutlet weak var lockedTextField: UITextField!
    
    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let cashDelegate = CashTextFieldDelegate()
    
    override func viewDidLoad() {
    
        super.viewDidLoad()

        zipCodeTextField.delegate = zipCodeDelegate
        cashTextField.delegate = cashDelegate
        lockedTextField.delegate = self
    }

    @IBAction func switchEditing(sender: UISwitch) {
        if !sender.on {
            lockedTextField.resignFirstResponder()
        }
    }
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        return lockTextFieldSwitch.on
    }
}

