//
//  ContactViewController.swift
//  TravelWithUs
//
//  Created by ATran.dev on 5/22/17.
//  Copyright © 2017 ATran.Dev. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var topContraints: NSLayoutConstraint!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var EmailTextField: UITextField!
    
    @IBAction func hideKeyboard(_ sender: UIButton) {
        if messageTextField.isFirstResponder {
            messageTextField.resignFirstResponder()
        }  else if EmailTextField.isFirstResponder {
            self.EmailTextField.resignFirstResponder()
        }else{
            self.nameTextField.resignFirstResponder()
        }
    }
    
    @IBAction func nameAC(_ sender: UITextField) {
        self.topContraints.constant = -100
    }
    @IBAction func emailAC(_ sender: UITextField) {
        self.topContraints.constant = -100
    }

    @IBAction func message(_ sender: UITextField) {
        self.topContraints.constant = -100
    }


    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
