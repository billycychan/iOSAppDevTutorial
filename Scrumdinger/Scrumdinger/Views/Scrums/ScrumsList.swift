//
//  ScrumsList.swift
//  Scrumdinger
//
//  Created by CHI YU CHAN on 9/11/2023.
//

import SwiftUI

struct ScrumsList: View {
    
    @Binding var scrums: [DailyScrum]
    @State var isPresentingNewScrumView: Bool = false
    var body: some View {
        List($scrums, id: \.title) { $scrum in
            NavigationLink(destination: {
                DetailView(scrum: $scrum)
            }) {
                CardView(scrum: scrum)
            }
            .listRowBackground(scrum.theme.mainColor)
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
            Button(action: {
                isPresentingNewScrumView = true
            }) {
                Image(systemName: "plus")
            }
        }
        .sheet(isPresented: $isPresentingNewScrumView, content: {
            NewScrumSheet(scrums: $scrums, isPresentingNewScrumView: $isPresentingNewScrumView)
        })
    }
}

#Preview {
    ScrumsList(scrums: .constant(DailyScrum.sampleData))
}
