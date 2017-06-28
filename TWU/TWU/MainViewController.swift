//
//  MainViewController.swift
//  TWU
//
//  Created by ATran.dev on 6/26/17.
//  Copyright © 2017 ATGroup. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var viewCheckin: UIView!
    let continents = ["Asia", "Europe","America","Africa","Australia","Antarctica","North America", "South America"]
    let imageContinents = [#imageLiteral(resourceName: "asia"),#imageLiteral(resourceName: "europe"),#imageLiteral(resourceName: "america"),#imageLiteral(resourceName: "africa"),#imageLiteral(resourceName: "australia"),#imageLiteral(resourceName: "antarctica"),#imageLiteral(resourceName: "north_america"),#imageLiteral(resourceName: "south_merica")]
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.target = revealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        
        tableView.register( UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: "MainTableViewCell")
        
        tableView.tableFooterView = UIView()
        tableView.separatorColor  = UIColor.clear
        viewCheckin.layer.cornerRadius = viewCheckin.frame.size.height*0.5
        viewCheckin.clipsToBounds = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapToCheckin(_ sender: UITapGestureRecognizer) {
    }
}
extension MainViewController : UITableViewDataSource,UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.size.height*0.25
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as! MainTableViewCell
        cell.imageCell.image = imageContinents[indexPath.row]
        cell.titleCell.text = continents[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(continents[indexPath.row])")
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ContentsViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
