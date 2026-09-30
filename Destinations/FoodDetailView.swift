//
//  FoodDetailView.swift
//  Destinations
//
//  Created by Jerico Asan on 18/09/26.
//

import SwiftUI

struct FoodDetailView: View {
    let menu: Menu
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // 1. Gambar Makanan Utama
                Image(menu.image)
                    .resizable()
                    .aspectRatio(3/2, contentMode: .fill)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .cornerRadius(16)
                    .shadow(color: .black.opacity(0.1), radius: 8, x: 0, y: 4)
                VStack(alignment: .leading, spacing: 12) {
                    // 2. Nama Menu & Rating Star Row
                    HStack(alignment: .firstTextBaseline) {
                        Text(menu.name)
                            .font(.system(.title, design: .rounded).bold())
                            .foregroundColor(.primary)
                        
                        Spacer()
                        
                        // Komponen Visual Rating Bintang
                        HStack(spacing: 4) {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                            Text("\(menu.rating)")
                                .font(.callout.bold())
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 6)
                        .background(Color(.systemGray6))
                        .cornerRadius(20)
                    }
                    
                    Divider()
                    
                    // 3. Bagian Ringkasan Menu (Summary)
                    Text(menu.summary)
                        .font(.body)
                        .foregroundColor(.secondary)
                        .lineSpacing(4)
                    
                    Divider()
                    
                    // 4. Bagian Bahan-Bahan (Ingredients)
                    Text("Ingredients")
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    Text(menu.ingredients)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .lineSpacing(4)
                }
                .padding(.horizontal, 4)
                Spacer()
                
            }
            .padding()
        }
        .navigationTitle(menu.name)
        .navigationBarTitleDisplayMode(.inline)
            Spacer()
        AddToCartView()
    }
    
}

#Preview {
    NavigationStack {
        FoodDetailView(menu: Menu.samples[4])
    }
}
