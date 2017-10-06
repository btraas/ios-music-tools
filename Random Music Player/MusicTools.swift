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
        let mediaPlayer = MPMusicPlayerController.systemMusicPlayer
        
        mediaPlayer.setQueue(with: MPMediaQuery.songs())
        
        mediaPlayer.shuffleMode = MPMusicShuffleMode.songs
        mediaPlayer.skipToNextItem()
        mediaPlayer.play()
        
    }
    
    
    static func playRandomFromQuery() {
        let mediaPlayer = MPMusicPlayerController.systemMusicPlayer
    
        mediaPlayer.setQueue(with: MPMediaQuery.songs())
        
        mediaPlayer.shuffleMode = MPMusicShuffleMode.songs
        mediaPlayer.skipToNextItem()
        mediaPlayer.play()
        
    }
    
    
    
    static func getCurrentSong() -> MPMediaItem? {
        
        let mediaPlayer = MPMusicPlayerApplicationController.applicationQueuePlayer
        // Add a playback queue containing all songs on the device
        
        mediaPlayer.setQueue(with: MPMediaQuery.songs())
        // Start playing from the beginning of the queue
        
        mediaPlayer.shuffleMode = MPMusicShuffleMode.songs
        mediaPlayer.skipToNextItem()
        mediaPlayer.play()
        
        return mediaPlayer.nowPlayingItem
        
    }

    
}
