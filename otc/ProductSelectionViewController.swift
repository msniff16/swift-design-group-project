//
//  ProductSelectionViewController.swift
//  otc
//
//  Created by Matthew Sniff on 9/29/15.
//  Copyright © 2015 Matthew Sniff. All rights reserved.
//

import UIKit

class ProductSelectionViewController: UIViewController, UIScrollViewDelegate {

    // outlets
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    var plusView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.contentSize = CGSizeMake(768, 1000)
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
    }
    
    // index of segment control changed
    @IBAction func indexChanged(sender: UISegmentedControl) {
            
        switch segmentControl.selectedSegmentIndex
        {
            case 0:
                self.containerView.hidden = false
                plusView?.removeFromSuperview()
            
            case 1:
                self.containerView.hidden = true
                plusView = PlusAndHardware.instanceFromNib()
                plusView!.frame = CGRectMake(0, 70, 768, 800)
                self.view.addSubview(plusView!)
            
            default:
                break; 
        }
        
    }
    
  

}
