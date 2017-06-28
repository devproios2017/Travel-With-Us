//
//  CommentViewController.swift
//  TWU
//
//  Created by Dat on 6/28/17.
//  Copyright © 2017 ATGroup. All rights reserved.
//

import UIKit

class CommentViewController: UIViewController {
    var tableData: NSMutableArray = []
    @IBOutlet weak var tableviewComment: UITableView!
    @IBOutlet weak var tldComment: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableviewComment.estimatedRowHeight = 50
        tableviewComment.rowHeight = UITableViewAutomaticDimension
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(CommentViewController.keyboardWillShow), name: Notification.Name.UIKeyboardWillShow, object: nil);
        NotificationCenter.default.addObserver(self, selector: #selector(CommentViewController.keyboardWillHide), name: Notification.Name.UIKeyboardWillHide, object: nil)
    }
    @IBOutlet weak var viewComemnt: UIView!
    @IBOutlet weak var contrantsViewComment: NSLayoutConstraint!
    func keyboardWillShow(notification: NSNotification){
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as?NSValue)?.cgRectValue{
            UIView.animate(withDuration: 0.5, delay: 0.3, options: .repeat, animations: {
                self.contrantsViewComment.constant += keyboardSize.height
                print(keyboardSize.height)
            }, completion: nil)
        }
    }
    func keyboardWillHide(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as?NSValue)?.cgRectValue{
            UIView.animate(withDuration: 0.5, delay: 0.3, options: .repeat, animations: {
                self.contrantsViewComment.constant -= keyboardSize.height
                print(keyboardSize.height)
            }, completion: nil)
        }

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonComment(_ sender: UIButton) {
        tldComment.resignFirstResponder()
        tableData.add(tldComment.text!)
        tldComment.text = nil
        tableviewComment.reloadData()
    }
    @IBAction func tapTodismissView(_ sender: UITapGestureRecognizer) {
        self.dismiss(animated: true) { 
            
        }
    }
}
extension CommentViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CommentTableViewCell", for: indexPath) as!CommentTableViewCell
        cell.lblContentComment.text = tableData.object(at: indexPath.row) as? String
        return cell
    }
}
