//
//  LoginViewController.swift
//  GenCar
//
//  Created by A Tran on 3/23/17.
//  Copyright © 2017 com.dotn. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func comebackButton(_ sender: UIButton) {
        //   self.revealViewController().revealToggle(self)
        
        //     self.navigationController?.popViewController(animated: true)
        print("come back login")
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    @IBAction func LoginButtonClicked(_ sender: UIButton) {
        print("aaa")
//        let object = UserDefaultInfor()
//        for (key,value) in object.person {
//            self.checkAccount(userCheck: key, passwordCheck: value)
//        }
        
    }
    
    @IBAction func comeBackButtonTouchUpInside() {
   self.navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func RegisterButtonClicked(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "RegisterViewController" ) as? RegisterViewController{
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
    
    @IBAction func ForgetPasswordButtonClicked(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "ForgetViewController" ) as? ForgetViewController{
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    func checkAccount(userCheck: String , passwordCheck: String){
        //get standard userDefault
        let userDefault = UserDefaults.standard
        //read key user
        let username = userDefault.string(forKey: "username")
        let password = userDefault.string(forKey: "password")
        print("Kiểm tra user...")
        if username == userCheck {
            print("Tai khoan \(username) da ton tai")
            if password == passwordCheck {
                print("Mat khau \(password)chinh xac! Dang nhap thang cong")
            }else{
                print("Sai mat khau  \(password)! Vui long nhap lai mat khau")
            }
        }else{
            print("Tai khoan  \(username) - \(password)khong ton tai. Ban vui long kiem tra lai Hoac Tao tai khoan moi")
        }
        //synchronize -> commit
        userDefault.synchronize() //sau khi set xong cần đồng bộ xuống cơ sở dữ liệu, bộ nhớ của nó
        
        //        //read int for key lan_chay
        //        var lan_chay = userDefaulr.integer(forKey: "lan_chay")
        //        print("Chạy lần thứ \(lan_chay)")
        //        //increase lan_chay by 1
        //        lan_chay = lan_chay+1
        //        userDefaulr.set(lan_chay, forKey: "lan_chay")
        //        //write lan_chay to userdefautl
        //        if let un = userName.text {
        //            let username = userDefaulr.string(forKey: "username")
        //            userDefaulr.set("\(un)", forKey: "username") // Nên mã hoá
        //            print(username!)
        //        }
        //
        //
        //        //add obj
        //        // let object = UserDefaultInfor()
        //        let object = UserDefaultInfor()
        //        for (key,value) in object.person {
        //
        //            //print("\(key)\(value)")
        //            if key=="user"{
        //                print("1--\(key)---\(value)")
        //                let user = userDefaulr.string(forKey: "user")
        //                if user == value {
        //                    print("user Đã tồn tại")
        //                    if key=="pwd"{
        //                        print("2--\(key)---\(value)")
        //                        let pwd = userDefaulr.string(forKey: "pwd")
        //                        if pwd == value {
        //                            print("pwd Đã tồn tại")
        //                        }else{
        //                            userDefaulr.set(value, forKey: "pwd")
        //                        }
        //                    }
        //
        //                }else{
        //                    if key=="pwd"{
        //                        print("2--\(key)---\(value)")
        //                        let pwd = userDefaulr.string(forKey: "pwd")
        //                        if pwd == value {
        //                            print("Đã tồn tại")
        //                        }else{
        //                            userDefaulr.set(value, forKey: "pwd")
        //                        }
        //                        userDefaulr.set(value, forKey: "user")
        //                    }
        //                }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.navigationController?.isNavigationBarHidden = true
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
