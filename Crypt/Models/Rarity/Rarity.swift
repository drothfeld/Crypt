//
//  Rarity.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/21/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

class Rarity {
    // Fields
    var name: String
    var abbreviation: String
    var description: String
    var color: ColorSpec
    var rarityRank: Int
    var sellValueMultiplier: Int?
    var isSellable: Bool
    
    // Constructor
    init(name: String, abbreviation: String, description: String, color: ColorSpec, rarityRank: Int, sellValueMultiplier: Int?) {
        self.name = name
        self.abbreviation = abbreviation
        self.description = description
        self.color = color
        self.rarityRank = rarityRank
        
        // Special key rarity items cannot be sold
        if (rarityRank == 0) {
            self.isSellable = false
        } else {
            self.isSellable = true
            self.sellValueMultiplier = sellValueMultiplier
        }
    }
}
