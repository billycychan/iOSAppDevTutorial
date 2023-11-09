//
//  ScrumsStackView.swift
//  Scrumdinger
//
//  Created by CHI YU CHAN on 9/11/2023.
//

import SwiftUI

@available(iOS 16.0, *)
struct ScrumsStackView: View {
    @Binding var scrums: [DailyScrum]
    var body: some View {
        NavigationStack {
            ScrumsList(scrums: $scrums)
        }
    }
}
