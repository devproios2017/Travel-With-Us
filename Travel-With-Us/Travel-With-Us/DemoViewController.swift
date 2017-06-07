//
//  DemoViewController.swift
//  TravelWithUs
//
//  Created by ATran.dev on 5/28/17.
//  Copyright © 2017 ATran.Dev. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {
    
    @IBOutlet weak var menu: UIView!
    @IBOutlet weak var viewcha: UIView!
    @IBAction func slideMenu(_ sender: Any) {
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
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
