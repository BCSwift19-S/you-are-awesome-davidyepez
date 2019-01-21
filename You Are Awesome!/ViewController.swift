//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by David Yépez on 1/14/19.
//  Copyright © 2019 David Yepez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    // code below executes when the apps view first loads
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func qliqButton(_ sender: UIButton) {
 //       messageLabel.text = "YOU ARE AWSOME"
        messageLabel
        
        
    }
    
    @IBAction func otherMessage(_ sender: UIButton) {
        messageLabel.text = "YOU ARE GREAT"
    }
}

