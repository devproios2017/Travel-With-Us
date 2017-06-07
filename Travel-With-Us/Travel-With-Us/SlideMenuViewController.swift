//
//  SlideMenuViewController.swift
//  TravelWithUs
//
//  Created by ATran.dev on 5/26/17.
//  Copyright © 2017 ATran.Dev. All rights reserved.
//

import UIKit

class SlideMenuViewController: UIViewController{
    
    @IBOutlet weak var ledding: NSLayoutConstraint!
    @IBOutlet weak var tableView: UITableView!
    var optionItem = ["Đăng nhập/Đăng kí" , "Về Chúng tôi","Liên hệ","Đăng xuất"]
    
    @IBOutlet weak var viewcha: UIView!
    
    @IBAction func menuButton(_ sender: Any) {
        //Move view cha
        //View will slide 20px up
        let xPosition = UIScreen.main.bounds.width*0.75
        
        
        let yPosition = viewcha.frame.origin.y
        
        let height = viewcha.frame.size.height
        let width = viewcha.frame.size.width
        //thêm bóng mờ:
        //Màu của bóng
        viewcha.layer.shadowColor = UIColor.black.cgColor
        
        //Độ mờ của bóng
        viewcha.layer.shadowOpacity = 0.7
        
        //
        //    viewcha.layer.shadow
        //bán kính bóng
        viewcha.layer.shadowRadius = 5
        
        viewcha.layer.shadowOffset = CGSize.zero
        
        //
        viewcha.layer.shadowPath = UIBezierPath(rect: viewcha.bounds).cgPath
        
        
        UIView.animate(withDuration: 0.3, animations: {
            self.viewcha.frame = CGRect(x: xPosition, y: yPosition, width: width, height: height)
        })
        //Move view con
        
    }
    
    @IBAction func swipeGestureAction(_ sender: UISwipeGestureRecognizer) {
        if let swipeGesture = sender as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.right:
                print("Swiped right")
            case UISwipeGestureRecognizerDirection.down:
                print("Swiped down")
            case UISwipeGestureRecognizerDirection.left:
                print("Swiped left")
            case UISwipeGestureRecognizerDirection.up:
                print("Swiped up")
            default:
                break
            }
        }
        
        ledding.constant = -UIScreen.main.bounds.height*0.8
        UIView.animate(withDuration: 0.2, animations:{
            self.view.layoutIfNeeded()
        })
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "LoginRegisterTableViewCell", bundle: nil), forCellReuseIdentifier: "LoginRegisterTableViewCell")
        
        tableView.register(UINib(nibName: "OptionItemMenuTableViewCell", bundle: nil), forCellReuseIdentifier: "OptionItemMenuTableViewCell")
        
        tableView.tableFooterView = UIView()
        
        
        
        ledding.constant = -UIScreen.main.bounds.height*0.8
        
        
        viewcha.layer.shadowOpacity = 1
        viewcha.layer.shadowRadius = 1
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGestureAction(_:)))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGestureAction(_:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGestureAction(_:)))
        swipeDown.direction = UISwipeGestureRecognizerDirection.down
        self.view.addGestureRecognizer(swipeDown)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGestureAction(_:)))
        swipeUp.direction = UISwipeGestureRecognizerDirection.up
        self.view.addGestureRecognizer(swipeUp)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
extension SlideMenuViewController : UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }else{
            return optionItem.count
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 100
        }else{
            return 50
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LoginRegisterTableViewCell", for: indexPath)
                as! LoginRegisterTableViewCell
            
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "OptionItemMenuTableViewCell", for: indexPath)
                as! OptionItemMenuTableViewCell
            cell.titleLabel.text = optionItem[indexPath.row]
            
            return cell
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row==0 {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        if indexPath.row==1 {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "AboutMeViewController") as! AboutMeViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        if indexPath.row==2{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ContactViewController") as! ContactViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        if indexPath.row==3 {
            print("Logout!!!")
        }
    }
}
