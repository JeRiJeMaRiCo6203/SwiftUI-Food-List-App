//
//  Menu.swift
//  Destinations
//
//  Created by Jerico Asan on 18/09/26.
//

import Foundation

struct Menu: Identifiable {
    let id = UUID()
    let name: String
    let ingredients: String
    let image: String
    let summary: String
    let rating: Int
    
    static let samples: [Menu] = [
        Menu(
            name: "Classic Wagyu Burger",
            ingredients: "Wagyu beef patty, cheddar cheese, brioche bun, lettuce, tomato, truffle mayo",
            image: "wagyu_burger",
            summary: "A juicy, premium wagyu beef burger served with melted cheddar and a signature truffle sauce.",
            rating: 9
        ),
        Menu(
            name: "Matcha Lava Cake",
            ingredients: "Uji matcha powder, white chocolate, eggs, butter, flour, vanilla ice cream",
            image: "matcha_lava",
            summary: "Rich and decadent green tea cake with a warm, oozing molten matcha center.",
            rating: 8
        ),
        Menu(
            name: "Spicy Salmon Mentai Don",
            ingredients: "Salmon sashimi, mentaiko sauce, steamed sushi rice, nori, green onions",
            image: "salmon_mentai",
            summary: "Torched salmon over a bed of warm rice, smothered in a creamy and spicy cod roe sauce.",
            rating: 9
        ),
        Menu(
            name: "Iced Brown Sugar Latte",
            ingredients: "Espresso, fresh milk, organic brown sugar syrup, boba pearls",
            image: "brown_sugar_latte",
            summary: "A perfectly balanced iced coffee drink sweetened with rich, caramelized brown sugar.",
            rating: 7
        ),
        Menu(
            name: "Truffle Mushroom Risotto",
            ingredients: "Arborio rice, shiitake mushrooms, cremini mushrooms, truffle oil, parmesan cheese",
            image: "mushroom_risotto",
            summary: "Creamy Italian rice cooked to perfection with mixed earthy mushrooms and aromatic truffle oil.",
            rating: 8
        )
    ]

}
