//
//  DestinationListView.swift
//  Destinations
//
//  Created by Jerico Asan on 18/09/26.
//

import SwiftUI

struct DestinationListView: View {
    var body: some View {
        NavigationStack {
            List {
                // ForEach() is a SwiftUI feature, not like for
                ForEach(Destination.samples)
                {
                    destination in NavigationLink(
                        destination: DetailView(place: destination)) {
                            Label(destination.name, systemImage: destination.symbol)
                        }
                }
            }
        }
        .navigationTitle("Tourist Destinations")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack{
        DestinationListView()
    }
}
