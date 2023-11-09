//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by CHI YU CHAN on 9/11/2023.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String


    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
