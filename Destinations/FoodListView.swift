//
//  DestinationListView.swift
//  Destinations
//
//  Created by Jerico Asan on 18/09/26.
//

import SwiftUI

struct FoodListView: View {
        var body: some View {
            NavigationStack {
                List {
                    // ForEach() is a SwiftUI feature, not like for
                    ForEach(Menu.samples)
                    {
                        menu in NavigationLink(
                            destination: FoodDetailView(menu: menu)) {
                                Text(menu.name)
                            }
                    }
                }
            }
            .navigationTitle("Top Menus")
            .navigationBarTitleDisplayMode(.inline)
        }
    }

#Preview {
    NavigationStack{
        FoodListView()
    }
}
