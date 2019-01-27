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
    var index = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad() //
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "When the genius bar needs help they call you!",
                        "You brighten my day!",
                        "You make me smile!",
                        "You are da bomb!",
                        "Hey, fabulous!"]
        
        messageLabel.text = messages.randomElement()!
         
        
        

//        messageLabel.text = messages[index]
//
//        if index == messages.count - 1 {
//            index = 0
//        } else {
//             index = index + 1
//        }
        
        
    }
    
}


/*       let message1 = "You are Awesome!"
 let message2 = "You are Great!"
 let message3 = "You are Amazing!"
 
 
 if messageLabel.text == message1{
 messageLabel.text = message2
 } else if messageLabel.text == message2 {
 messageLabel.text = message3
 } else {
 messageLabel.text = message1
 }
 
 */
