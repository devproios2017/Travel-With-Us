//
//  AboutMeViewController.swift
//  TravelWithUs
//
//  Created by ATran.dev on 5/22/17.
//  Copyright © 2017 ATran.Dev. All rights reserved.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var technicalSkill = ["iOS","Node JS","Java","Photoshop","Web design"]
    var percentTC = [0.75,0.55,0.65,0.50,0.50]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .none
        
        tableView.register( UINib(nibName: "IntroduceProfileTableViewCell", bundle: nil), forCellReuseIdentifier: "IntroduceProfileTableViewCell")
        tableView.register( UINib(nibName:"TechnicalSkillTableViewCell", bundle: nil),forCellReuseIdentifier: "TechnicalSkillTableViewCell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
extension AboutMeViewController: UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row==0 {
            return 334.5
        }else{
            return 90
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "IntroduceProfileTableViewCell", for: indexPath) as! IntroduceProfileTableViewCell
            
            cell.selectionStyle = .none
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TechnicalSkillTableViewCell", for: indexPath) as! TechnicalSkillTableViewCell
            cell.titleTechnicalSkillLabel.text = technicalSkill[indexPath.row]
            cell.percentLabel.text = "\(100*percentTC[indexPath.row])%"
            cell.trailingConstraints.constant = (UIScreen.main.bounds.width-20)*(CGFloat)(1-percentTC[indexPath.row])
            
            cell.selectionStyle = .none
            return cell
        }
        
    }
    
}
