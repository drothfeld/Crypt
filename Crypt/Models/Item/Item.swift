//
//  Item.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/23/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

class Item {
    // Fields
    var id: Int
    var name: String
    var description: String
    var rarity: Rarity
    var inventorySpace: Int
    var goldValue: Int
    
    // Constructor
    init(id: Int, name: String, description: String, rarity: Rarity, inventorySpace: Int, goldValue: Int) {
        self.id = id
        self.name = name
        self.description = description
        self.rarity = rarity
        self.inventorySpace = inventorySpace
        self.goldValue = Int(Double(goldValue) * rarity.sellValueMultiplier!)
    }
    
    // Checks if one item has a higher rarity than another
    func isMoreRareThan(item: Item) -> Bool {
        return (self.rarity.rarityRank > item.rarity.rarityRank)
    }
    
    // Checks if one item is worth more gold than another
    func isWorthMoreGold(item: Item) -> Bool {
        return (self.goldValue > item.goldValue)
    }
    
    // Checks if two items are the same
    func isEqualTo(item: Item) -> Bool {
        return (self.id == item.id)
    }
}
