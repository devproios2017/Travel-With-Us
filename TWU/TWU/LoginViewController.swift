//
//  LoginViewController.swift
//  TWU
//
//  Created by ATran.dev on 6/22/17.
//  Copyright © 2017 ATGroup. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var deleteUsername: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var showHidePassword: UIButton!
    
    
    @IBAction func showHideButtonTouchUpInside(_ sender: UIButton) {
        passwordTextField.isSecureTextEntry = !passwordTextField.isSecureTextEntry
    }
    @IBAction func deleteUsernameTouchUpInside(_ sender: UIButton) {
        usernameTextField.text = ""
    }
    
    
    
    
    
    @IBAction func usernameEdittingChanged(_ sender: Any) {
        deleteUsername.isHidden = false
        if (usernameTextField.text?.isEmpty)! {
            usernameTextField.isHidden = true
        }
    }
    @IBAction func passwordEdittingChanged(_ sender: Any) {
        showHidePassword.isHidden = false
        if (passwordTextField.text?.isEmpty)! {
            passwordTextField.isHidden = true
        }
    }
    
    
    @IBAction func loginWithSocialNetwork(_ sender: Any) {
    }
    

    
    @IBAction func googleTouchUpInside(_ sender: UIButton) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
