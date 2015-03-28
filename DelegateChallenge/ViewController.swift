//
//  ViewController.swift
//  DelegateChallenge
//
//  Created by Victor Guerra on 27/03/15.
//  Copyright (c) 2015 Victor Guerra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!

    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let cashDelegate = CashTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        zipCodeTextField.delegate = zipCodeDelegate
        cashTextField.delegate = cashDelegate
    }


}

