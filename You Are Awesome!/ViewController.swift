//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by David Yépez on 1/14/19.
//  Copyright © 2019 David Yepez. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
   
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var newIndex: Int = 0
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 3

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func nonRepeatingRandom (lastNumber: Int, maxValue: Int) -> Int {
        
        repeat {
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumber == newIndex
         return newIndex
        
    }
    
    
    func playSound(soundName: String) {

            
            if let sound = NSDataAsset(name: soundName) {
                
                do {
                    try awesomePlayer = AVAudioPlayer(data: sound.data)
                    awesomePlayer.play()
                } catch {
                    print("ERROR: file \(soundName) didn't load.")
                }
                
            } else {
                print("ERROR: file \(soundName) didn't load.")
            }
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
    
        
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
        
        let soundName = "sound\(soundIndex)"
        playSound(soundName: soundName)
        
        
        
    }
    
}

