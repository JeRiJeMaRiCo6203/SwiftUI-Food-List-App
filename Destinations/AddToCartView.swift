//
//  AddToCartView.swift
//  Destinations
//
//  Created by Jerico Asan on 18/09/26.
//

import SwiftUI

struct AddToCartView: View {
    // State dari kode awal Anda
    @State private var counter: Int = 0
    @State private var typeOfNumber: String = "Quantity"
    @State private var message: String = "Cart updated"
    
    // Warna dinamis (Ganti sesuai aset/tema Anda)
    var numberColor: Color {
        counter > 0 ? .green : .secondary
    }
    
    var body: some View {
        VStack(spacing: 24) {
            // 1. Label Tipe & Jumlah (Dari kode awal Anda)
            VStack(spacing: 8) {
                Text(typeOfNumber)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .textCase(.uppercase)
                
                Text("\(counter)")
                    .font(.system(size: 48, weight: .bold, design: .rounded))
                    .foregroundStyle(numberColor)
            }
            
            // 2. Stepper Kontrol (Plus, Minus, Reset)
            HStack(spacing: 16) {
                // Tombol Minus
                Button {
                    if counter > 0 { // Proteksi agar tidak minus
                        counter -= 1
                        print("\(message): Decreased to \(counter)")
                    }
                } label: {
                    Image(systemName: "minus")
                        .font(.title3.bold())
                        .frame(width: 44, height: 44)
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
                .tint(.black)
                .disabled(counter == 0) // Mati jika angka 0
                
                // Tombol Reset / Kembali ke 0
                Button {
                    counter = 0
                    print("\(message): Reset to 0")
                } label: {
                    Image(systemName: "arrow.uturn.backward")
                        .font(.body.bold())
                        .frame(width: 44, height: 44)
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
                .tint(.secondary)
                
                // Tombol Plus
                Button {
                    counter += 1
                    print("\(message): Increased to \(counter)")
                } label: {
                    Image(systemName: "plus")
                        .font(.title3.bold())
                        .frame(width: 44, height: 44) 
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
                .tint(.black)
            }
            .padding(.horizontal)
            
            // 3. Tombol Utama: Add to Cart
            Button {
                // Logika ketika item benar-benar ditambahkan ke keranjang belanja
                print("SUCCESS: Added \(counter) items to shopping cart!")
                // Biasanya di sini Anda memanggil fungsi untuk memasukkan data ke database/state global
            } label: {
                HStack(spacing: 12) {
                    Image(systemName: "bag.badge.plus")
                        .font(.headline)
                    Text(counter > 0 ? "Add \(counter) to Cart" : "Select Quantity")
                        .font(.headline)
                }
                .frame(maxWidth: .infinity) // Membuat tombol memanjang penuh
                .padding(.vertical, 16)
            }
            .buttonStyle(.borderedProminent)
            .tint(.black)
            .controlSize(.large)
            .padding(.horizontal)
            .disabled(counter == 0) // Tombol terkunci jika kuantitas masih 0
        }
        .padding()
        
    }
    
}

#Preview {
    AddToCartView()
}
