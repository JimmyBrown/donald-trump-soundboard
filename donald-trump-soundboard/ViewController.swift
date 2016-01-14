//
//  ViewController.swift
//  donald-trump-soundboard
//
//  Created by Jimmy Brown on 1/13/16.
//  Copyright © 2016 Jimmy Brown. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let soundFileNames = ["america_great", "american_dream", "announcement", "beat_china", "beat_mexico", "big_lie", "blown_up", "bringing_drugs", "chevy_tokyo", "dying", "great_wall", "isis", "jobs_president", "laughing_border", "like_china", "losers", "need_leader", "need_money", "not_nice_person", "obama", "obamacare_website", "rapists", "really_rich", "stupid_people", "thank_you_darling"]
    
    var audioPlayers = [AVAudioPlayer]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Audio Players
        for sound in soundFileNames {
            
            do {
                
                let url = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(sound, ofType: "mp3")!)
                let audioPlayer = try AVAudioPlayer(contentsOfURL: url)
                
                audioPlayers.append(audioPlayer)
                
            } catch {
                // Catch error
                audioPlayers.append(AVAudioPlayer())
            }
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(sender: BlueButton) {
        
        let audioPlayer = audioPlayers[sender.tag]
        audioPlayer.play()
    }

}

