//
//  ForgetViewController.swift
//  GenCar
//
//  Created by A Tran on 3/20/17.
//  Copyright © 2017 com.dotn. All rights reserved.
//

import UIKit

class ForgetViewController: UIViewController ,UITextFieldDelegate{
    
    @IBOutlet weak var hideKeyboardButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // emailTextField.resignFirstResponder()
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    
    @IBAction func comeBackButtonClicked(_ sender: Any) {
     print("come back forget ")
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    @IBAction func hideKeyboardButton(_ sender: UIButton) {
        emailTextField.resignFirstResponder();
    }
    
    @IBAction func changeHeight(_ sender: Any) {
        
    }
    
    @IBAction func getPassword(_ sender: Any) {
        
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
