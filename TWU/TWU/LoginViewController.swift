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
    
    @IBAction func signUpButtonTouchUpInside(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(vc, animated: true)
        //self.revealViewController().pushFrontViewController(vc, animated: true)
        
    }
    @IBAction func ForgotPasswordButtonTouchUpInside(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ForgetPasswordViewController") as! ForgetPasswordViewController
        self.navigationController?.pushViewController(vc, animated: true)
        //self.revealViewController().pushFrontViewController(vc, animated: true)
        
        
    }
    
    
    @IBAction func showHideButtonTouchUpInside(_ sender: UIButton) {
        passwordTextField.isSecureTextEntry = !passwordTextField.isSecureTextEntry
    }
    @IBAction func deleteUsernameTouchUpInside(_ sender: UIButton) {
        usernameTextField.text = ""
        deleteUsername.isHidden = true
    }
    
    
    
    
    @IBAction func textFieldEdittingChanged(_ sender: Any) {
        if usernameTextField == sender as! UITextField {
            deleteUsername.isHidden = false
            if (usernameTextField.text?.isEmpty)! {
                deleteUsername.isHidden = true
            }
        }
        if passwordTextField == sender as! UITextField {
            showHidePassword.isHidden = false
            if (passwordTextField.text?.isEmpty)! {
                showHidePassword.isHidden = true
            }
            
        }
    }
    
    @IBAction func loginWithSocialNetwork(_ sender: Any) {
        
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
