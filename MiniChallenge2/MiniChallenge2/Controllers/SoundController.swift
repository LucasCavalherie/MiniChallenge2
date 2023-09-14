//
//  SoundController.swift
//  MiniChallenge2
//
//  Created by Ligia Naomi Nakase on 13/09/23.
//

import Foundation
import AVFoundation

class SoundController {
    
    static let shared = SoundController()
    private var soundDict: [Sound:AVAudioPlayer?] = [:]
    private let queue = DispatchQueue(label: "com.example.soundQueue", attributes: .concurrent)

    
    init() {
        for sound in Sound.allCases {
            soundDict[sound] = getAudioPlayer(sound: sound)
        }
    }
    
    private func getAudioPlayer(sound: Sound) -> AVAudioPlayer? {
        guard let url = Bundle.main.url(
            forResource: sound.rawValue,
            withExtension: ".mp3"
        ) else {
            print("Fail to get url for \(sound)")
            return nil
        }

        var audioPlayer: AVAudioPlayer?
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.prepareToPlay()
            return audioPlayer
        } catch {
            print("Fail to load \(sound)")
            return nil
        }
    }
    
    func playLoop(sound: Sound) {
        guard let audioPlayer = soundDict[sound, default: nil] else { return }
        audioPlayer.numberOfLoops = -1
        audioPlayer.play()
    }
    
    func play(sound: Sound) {
        queue.async {
            guard let audioPlayer = self.soundDict[sound] else { return }
            audioPlayer?.play()
        }
    }
    
    func pause(sound: Sound) {
        guard let audioPlayer = soundDict[sound, default: nil] else { return }
        audioPlayer.pause()
    }
    
    func stop(sound: Sound) {
        guard let audioPlayer = soundDict[sound, default: nil] else { return }
        audioPlayer.currentTime = 0
        audioPlayer.pause()
    }
    
    enum Sound: String, CaseIterable {
        case drop
        case clickFast
        case beep
        case cardClick
        case logo
    }
}
