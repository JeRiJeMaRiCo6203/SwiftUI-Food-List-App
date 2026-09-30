//
//  Destination.swift
//  Destinations
//
//  Created by Jerico Asan on 18/09/26.
//

import Foundation

struct Destination: Identifiable {
    let id = UUID()
    let name: String
    let island: String
    let symbol: String
    let summary: String
    let suggestedDays: Int
    
    static let samples: [Destination] = [
        Destination(
            name: "Borobudur",
            island: "Central Java",
            symbol: "building.columns.fill",
            summary: "The largest Buddhist Temple in the world",
            suggestedDays: 2
        ),
        Destination(
            name: "Raja Ampat",
            island: "West Papua",
            symbol: "water.waves",
            summary: "Coral reefs with more recorded fish species than anywhere else on earth",
            suggestedDays: 6
        )
    ]
}
