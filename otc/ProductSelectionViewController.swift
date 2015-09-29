//
//  ProductSelectionViewController.swift
//  otc
//
//  Created by Matthew Sniff on 9/29/15.
//  Copyright © 2015 Matthew Sniff. All rights reserved.
//

import UIKit

class ProductSelectionViewController: UIViewController {

    // outlets
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    var plusView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
                plusView!.frame = CGRectMake(0, 200, 780, 600)
                self.view.addSubview(plusView!)
            
            default:
                break; 
        }
        
    }
    
  

}
