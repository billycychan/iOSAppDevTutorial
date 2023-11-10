//
//  SpeakerArc.swift
//  Scrumdinger
//
//  Created by CHI YU CHAN on 9/11/2023.
//

import SwiftUI

struct SpeakerArc: Shape {
    
    // 0 - 1
    let speakerIndex: Int
    let totalSpeakers: Int
    
    // 180
    private var degreesPerSpeaker: Double {
        360.0 / Double(totalSpeakers)
    }
    
    // 0, 181
    private var startAngle: Angle {
        Angle(degrees: degreesPerSpeaker * Double(speakerIndex) + 1.0)
    }
    // 180, 360
    private var endAngle: Angle {
        Angle(degrees: startAngle.degrees + degreesPerSpeaker - 1.0)
    }
    
    
    func path(in rect: CGRect) -> Path {
        let diameter = min(rect.size.width, rect.size.height) - 24.0
        let radius = diameter / 2.0
        let center = CGPoint(x: rect.midX, y: rect.midY)
        return Path { path in
            path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)
        }
    }
}
