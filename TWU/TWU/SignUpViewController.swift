//
//  SignUpViewController.swift
//  TWU
//
//  Created by ATran.dev on 6/23/17.
//  Copyright © 2017 ATGroup. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var showHideOld: UIButton!
    @IBOutlet weak var showHideNew: UIButton!
    @IBOutlet weak var showHideReNew: UIButton!
    
    @IBOutlet weak var oldPassword: UITextField!
    
    @IBOutlet weak var newPassword: UITextField!
    
    @IBOutlet weak var reNewPassword: UITextField!
    
    
    //    @IBAction func showHideOldTouchUpInside(_ sender: Any) {
    //    }
    //
    //    @IBOutlet weak var showHideNewTouchUpInside: UIButton!
    
    @IBAction func textChangeEdittingChanged(_ sender: Any) {
        if oldPassword == sender as! UITextField{
            showHideOld.isHidden = false
        }
        if newPassword == sender as! UITextField{
            showHideNew.isHidden = false
        }
        if reNewPassword == sender as! UITextField{
            showHideReNew.isHidden = false
        }
    }
    @IBAction func showHide(_ sender: Any) {
        if showHideOld == sender as! UIButton {
            oldPassword.isSecureTextEntry = !oldPassword.isSecureTextEntry
        }
        if showHideNew == sender as! UIButton {
            newPassword.isSecureTextEntry = !newPassword.isSecureTextEntry
        }
        if showHideReNew == sender as! UIButton {
            reNewPassword.isSecureTextEntry = !reNewPassword.isSecureTextEntry
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
