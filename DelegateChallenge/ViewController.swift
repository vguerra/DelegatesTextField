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

    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        zipCodeTextField.delegate = zipCodeDelegate
    }


}

