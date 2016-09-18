//
//  ViewController.swift
//  Net Availability
//
//  Created by Aland Kawa on 9/18/16.
//  Copyright © 2016 Aland Kawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var netLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        netLabel.numberOfLines = 2
        
        if Reachability.isConnectedToNetwork() {
            netLabel.text = "Internet Connection\nIs Available!"
        } else {
            netLabel.text = "Internet Connection\nIsn't Available!"
        }
    }
}

