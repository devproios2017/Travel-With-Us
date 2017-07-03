//
//  MenuViewController.swift
//  TWU
//
//  Created by ATran.dev on 6/26/17.
//  Copyright © 2017 ATGroup. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var optionLogin = ["Home","Introduce","Shared","Exit"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
<<<<<<< HEAD
=======
        self.revealViewController().panGestureRecognizer()
        
>>>>>>> 6e4c3926f76658af6dba6baeef8a7beef5cdb723
        tableView.register( UINib(nibName: "LoginTableViewCell", bundle: nil), forCellReuseIdentifier: "LoginTableViewCell")
        tableView.register( UINib(nibName: "OptionLoginTableViewCell", bundle: nil), forCellReuseIdentifier: "OptionLoginTableViewCell")
        
        tableView.tableFooterView = UIView()
        tableView.separatorColor  = UIColor.clear
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension MenuViewController : UITableViewDataSource,UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return optionLogin.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 100
        }else{
            return 60
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LoginTableViewCell", for: indexPath) as! LoginTableViewCell
            
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "OptionLoginTableViewCell", for: indexPath) as! OptionLoginTableViewCell
            cell.titleCell.text = optionLogin[indexPath.row]
            cell.imageCell.image = #imageLiteral(resourceName: "ic_home_white")
            return cell
        }
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
<<<<<<< HEAD
//        let revealViewController : SWRevealViewController = self.revealViewController()
//        let cell : OptionLoginTableViewCell = tableView.cellForRow(at: indexPath) as! OptionLoginTableViewCell
        if indexPath.row == 0{
            let vc = storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            self.revealViewController().pushFrontViewController(vc, animated: true)
        }
        if indexPath.row == 1{
            let vc = storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
=======
        //        let revealViewController : SWRevealViewController = self.revealViewController()
        //        let cell : OptionLoginTableViewCell = tableView.cellForRow(at: indexPath) as! OptionLoginTableViewCell
        if indexPath.row == 0{
            let vc = storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            
            self.revealViewController().pushFrontViewController(vc, animated: true)
            
        }
        if indexPath.row == 1{
            let vc = storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
            
>>>>>>> 6e4c3926f76658af6dba6baeef8a7beef5cdb723
            self.revealViewController().pushFrontViewController(vc, animated: true)
        }
    }
    
}

