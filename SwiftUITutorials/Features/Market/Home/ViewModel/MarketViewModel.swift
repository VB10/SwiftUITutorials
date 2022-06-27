//
//  MarketViewModel.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 14.06.2022.
//

import Foundation

class MarketViewModel: ObservableObject {
    init() {
        items = MarketItem.items
    }

    @Published var items: [MarketItem]
}

//MARK: Market businsess
extension MarketViewModel: MarketUses {
    func remove(id: UUID) -> Bool {
        guard let index = items.firstIndex(where: { item in item.id == id }) else { return false }
        items.remove(at: index)
        return true
    }
    
    func addItem(item: MarketItem) {
        items.append(item)
    }

}

protocol MarketUses {
    func addItem(item: MarketItem)
    func remove(id: UUID) -> Bool
    var items: [MarketItem] { get set }
}


extension MarketUses {
    mutating func remove(id: UUID) -> Bool {
        guard let index = items.firstIndex(where: { item in item.id == id }) else { return false }
        self.items.remove(at: index)
        return true
    }
}

