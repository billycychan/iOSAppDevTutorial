//
//  AVPlayer+Ding.swift
//  Scrumdinger
//
//  Created by CHI YU CHAN on 9/11/2023.
//

import AVFoundation

extension AVPlayer {
    static let sharedDingPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else { fatalError("Failed to find sound file.") }
        return AVPlayer(url: url)
    }()
}
