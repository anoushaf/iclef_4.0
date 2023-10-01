//
//  playSound.swift
//  iClef
//
//  Created by Anousha Farshid on 9/17/23.
//

import Foundation
import AVFoundation

var player: AVAudioPlayer?

func playSound(key: String){
    if let path = Bundle.main.url(forResource: key, withExtension: ".mp3"){
        
        //let url = URL(fileURLWithPath: path)
        
        do{
            player = try AVAudioPlayer(contentsOf: path)
            player?.prepareToPlay()
            player?.play()
        }catch{
            print(error.localizedDescription)
            print("AVAudioPlayer init failed")
        }
    }
}
