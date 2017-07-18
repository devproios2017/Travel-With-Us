//
//  ForgetPasswordViewController.swift
//  TWU
//
//  Created by ATran.dev on 6/22/17.
//  Copyright © 2017 ATGroup. All rights reserved.
//

import UIKit

class ForgetPasswordViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var deleteUsername: UIButton!

    @IBAction func backButton(_ sender: Any) {
<<<<<<< HEAD

=======
>>>>>>> master
    self.navigationController?.popViewController(animated: true)

    }
    
    
    @IBAction func usernameEdittingChanged(_ sender: Any) {
        deleteUsername.isHidden = false
        if (usernameTextField.text?.isEmpty)! {
            deleteUsername.isHidden = true
        }
        
    }
    
    
    @IBAction func deleteUsernameTouchUpInside(_ sender: Any) {
        usernameTextField.text = ""
        deleteUsername.isHidden = true
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
