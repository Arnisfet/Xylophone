//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func xylophoneButtonPressed(_ sender: UIButton) {
        var button = ""
        switch sender.tag {
        case 1:
            button = "C"
        case 2:
            button = "D"
        case 3:
            button = "E"
        case 4:
            button = "F"
        case 5:
            button = "G"
        case 6:
            button = "A"
        case 7:
            button = "B"
        default:
            break
        }
        playSound(button)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { // Change `2.0` to the desired number of seconds.
            sender.alpha = 1.0
        }
        
    }

    func playSound(_ button: String) {
        
        let url = Bundle.main.url(forResource: button, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

