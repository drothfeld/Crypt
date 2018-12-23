//
//  Rarity.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/21/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

struct Rarity {
    // Fields
    var name: String
    var abbreviation: String
    var description: String
    var color: RGBColor
    var rarityRank: Int
    var occurrenceRate: Double
    var sellValueMultiplier: Double? = 0.0
    var isSellable: Bool
    var isDroppable: Bool
    
    // Constructor
    init(name: String, abbreviation: String, description: String, color: RGBColor, rarityRank: Int, occurrenceRate: Double, sellValueMultiplier: Double? = 0.0) {
        self.name = name
        self.abbreviation = abbreviation
        self.description = description
        self.color = color
        self.rarityRank = rarityRank
        self.occurrenceRate = occurrenceRate
        
        // Special key rarity items cannot be sold
        if (rarityRank == 0) {
            self.isSellable = false
            self.isDroppable = false
        } else {
            self.isSellable = true
            self.isDroppable = true
            self.sellValueMultiplier = sellValueMultiplier
        }
    }
    
    // Checks if two rarities are the same
    func isEqualTo(rarity: Rarity) -> Bool {
        return (self.rarityRank == rarity.rarityRank)
    }
}
