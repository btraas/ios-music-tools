//
//  MusicTools.swift
//  Tools for the system Music Player
//
//  Created by Brayden Traas on 2017-10-05.
//  Copyright © 2017 Brayden Traas. All rights reserved.
//

import Foundation
import AVKit
import UIKit
import MediaPlayer
import AVFoundation

class MusicTools {
    
    
    static func playRandom() {
        let myMediaPlayer = MPMusicPlayerController.systemMusicPlayer
        
        myMediaPlayer.setQueue(with: MPMediaQuery.songs())
        
        myMediaPlayer.shuffleMode = MPMusicShuffleMode.songs
        myMediaPlayer.skipToNextItem()
        myMediaPlayer.play()
        
    }
    
    
    static func playRandomFromQuery() {
        let myMediaPlayer = MPMusicPlayerController.systemMusicPlayer
    
        
        
        
        myMediaPlayer.setQueue(with: MPMediaQuery.songs())
        
        myMediaPlayer.shuffleMode = MPMusicShuffleMode.songs
        myMediaPlayer.skipToNextItem()
        myMediaPlayer.play()
        
    }
    
    
    
    static func getCurrentSong() -> MPMediaItem? {
        
        let myMediaPlayer = MPMusicPlayerApplicationController.applicationQueuePlayer
        // Add a playback queue containing all songs on the device
        
        myMediaPlayer.setQueue(with: MPMediaQuery.songs())
        // Start playing from the beginning of the queue
        
        myMediaPlayer.shuffleMode = MPMusicShuffleMode.songs
        myMediaPlayer.skipToNextItem()
        myMediaPlayer.play()
        
        return myMediaPlayer.nowPlayingItem
        
    }

    
}
