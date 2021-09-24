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
    
    /* Allows us to use the phones audio to play sounds developer.apple.com/documentation/avfaudio/avaudioplayer */
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

//    keyPressed is called when a button gets pressed
//                              Input to the func
    @IBAction func keyPressed(_ sender: UIButton) {

        
// Changes opacity of the button that is pressed
        sender.alpha = 0.5
        print("Start")
// Chnages the opacity back to original after 0.2 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            print("End")
            sender.alpha = 1.0
            
            
        }
        
        
        
        
// The ! makes us ensure that whatever will be passed the function will have the input.
        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName: String) {
        // Setting the location of the C.wav
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        // This loads the sound, like a CD player
        player = try! AVAudioPlayer(contentsOf: url!)
        // This plays the sound
        player.play()
    }
    
}

