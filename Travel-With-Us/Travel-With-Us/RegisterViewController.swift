//
//  Register01ViewController.swift
//  GenCar
//
//  Created by A Tran on 3/24/17.
//  Copyright © 2017 com.dotn. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var paswordTextField: UITextField!
    @IBOutlet weak var repasswordTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    
    func checkUserdefault (){
        print("dang sua")
        let userDefault = UserDefaults.standard
        let emailPerson = userDefault.string(forKey: "email")
        if emailTextField.text == emailPerson {
            print("Tài khoản đã tồn tại! Vui lòng đăng nhập hoặc thử bằng một tài khoản khác")
            self.paswordTextField.isEnabled = false
            self.repasswordTextField.isEnabled = false
            self.phoneNumberTextField.isEnabled = false
            self.addressTextField.isEnabled = false
            
        }
    }
    @IBAction func emailActionEditingDidEnd(_ sender: UITextField) {
        print("dang sua")
        let userDefault = UserDefaults.standard
        let emailPerson = userDefault.string(forKey: "email")
        if emailTextField.text == emailPerson {
            print("Tài khoản đã tồn tại! Vui lòng đăng nhập hoặc thử bằng một tài khoản khác")
            self.paswordTextField.isEnabled = false
            self.repasswordTextField.isEnabled = false
            self.phoneNumberTextField.isEnabled = false
            self.addressTextField.isEnabled = false
        }else{
            self.paswordTextField.isEnabled = true
            self.repasswordTextField.isEnabled = true
            self.phoneNumberTextField.isEnabled = true
            self.addressTextField.isEnabled = true

            print("Tài khoản Khong  tồn tại!")
        }
    }
    
    @IBAction func passwordActionEditingDidEnd(_ sender: UITextField) {
    }
    
    @IBAction func rePasswordActionEditingDidEnd(_ sender: UITextField) {
    }
    
    @IBAction func comeBackButtonClicked(_ sender: UIButton) {
        print("come back login 1")
        self.navigationController?.popViewController(animated: true);
        
    }
    @IBAction func registerButtonTouchUpInside() {
       print("Registeting...")
    }
    
    
    override var prefersStatusBarHidden: Bool{
        return true
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



