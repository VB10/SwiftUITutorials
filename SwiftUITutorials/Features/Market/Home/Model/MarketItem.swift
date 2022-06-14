//
//  MarketItem.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 14.06.2022.
//

import Foundation

struct MarketItem: Identifiable {
    let id: UUID = UUID()
    let name: String
    var price: Int

    mutating func updatePrice(value: Int?) {
        guard let _value = value else { return }
        price = _value
    }
}

extension MarketItem {
    static let items = [
        MarketItem(name: "v1", price: 15),
        MarketItem(name: "v2", price: 30)
    ]
}
