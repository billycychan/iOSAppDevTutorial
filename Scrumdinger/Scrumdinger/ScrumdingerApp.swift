//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by CHI YU CHAN on 9/11/2023.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
