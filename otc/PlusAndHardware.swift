//
//  PlusAndHardware.swift
//  otc
//
//  Created by Matthew Sniff on 9/29/15.
//  Copyright © 2015 Matthew Sniff. All rights reserved.
//

import UIKit

class PlusAndHardware: UIView {

    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "PlusAndHardwareView", bundle: nil).instantiateWithOwner(nil, options: nil)[0] as! UIView
    }

}
