//
//  ViewController.swift
//  Random Music Player
//
//  Created by Brayden Traas on 2017-10-05.
//  Copyright © 2017 Brayden Traas. All rights reserved.
//

import AVKit
import UIKit
import MediaPlayer
import AVFoundation


class ViewController: UIViewController {
    
    @IBOutlet weak var nowPlayingLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nowPlayingLabel.text = MusicTools.getCurrentSong()?.title

    }
    

    
    @IBAction func playRandom(_ sender: UIButton) {
        MusicTools.playRandom()
        nowPlayingLabel.text = MusicTools.getCurrentSong()?.title
    }
    
    

    
    
    
    
}

