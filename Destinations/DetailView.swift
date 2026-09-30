//
//  DetailView.swift
//  Destinations
//
//  Created by Jerico Asan on 18/09/26.
//

import SwiftUI

struct DetailView: View {
    let place: Destination
    
    var body: some View {
        VStack(){
            Image(systemName: place.symbol)
                .font(.system(size: 70))
                .foregroundStyle(Color.blue)
            Text(place.name)
                .font(Font.largeTitle.bold())
            Text(place.island)
                .font(.title3)
                .foregroundStyle(.secondary)
            Text(place.summary)
                .multilineTextAlignment(.center)
            Text("Suggested stay: \(place.suggestedDays) days")
                .font(.footnote)
                .foregroundStyle(.secondary)
        }
        .navigationTitle(place.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack{
        DetailView(place: Destination.samples[0])
    }
}
