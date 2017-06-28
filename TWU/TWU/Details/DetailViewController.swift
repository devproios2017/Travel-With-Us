//
//  DetailViewController.swift
//  TWU
//
//  Created by Dat on 6/27/17.
//  Copyright © 2017 ATGroup. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var contransTop: NSLayoutConstraint!
    @IBOutlet weak var imageDown: UIImageView!

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollViewpage: UIScrollView!
    var image : [UIImage] = [#imageLiteral(resourceName: "america"),#imageLiteral(resourceName: "north_america"),#imageLiteral(resourceName: "america"),#imageLiteral(resourceName: "north_america")]
    var farme = CGRect(x: 0, y: 0, width: 0, height: 0)
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for index in 0..<image.count{
            farme.origin.x = scrollViewpage.frame.size.width*CGFloat(index)
            farme.size = scrollViewpage.frame.size
            let iamge = UIImageView(frame: farme)
            iamge.image = image[index]
            self.scrollViewpage.addSubview(iamge)
        }
        scrollViewpage.contentSize = CGSize(width:   scrollViewpage.frame.size.width*CGFloat(image.count), height: self.scrollViewpage.frame.size.height)
        
        
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollViewpage.contentOffset.x/scrollViewpage.frame.size.width
        pageControl.currentPage = Int(pageNumber)
        pageControl.currentPageIndicatorTintColor = UIColor.white
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapshowView(_ sender: UITapGestureRecognizer) {
        if(imageDown.tag == 0){
            contransTop.constant = self.view.frame.size.height*0.1
            imageDown.tag = 1
        }else{
            contransTop.constant = 0
            imageDown.tag = 0
        }
    }

    @IBAction func tapToComment(_ sender: UITapGestureRecognizer) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CommentViewController")
        self.present(vc, animated: true) { 
            
        }
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
