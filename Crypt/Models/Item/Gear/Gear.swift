//
//  Gear.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/30/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

class Gear: Item {
    var statBonus: [Int] // [HEALTH, MANA, STR, MAGIC, DEF, SPEED]
    var gearType: String
    var defenseType: DefenseType? = nil
    
    // Constructor
    init(id: Int, name: String, description: String, rarity: Rarity, inventorySpace: Int, goldValue: Int, levelRequirement: Int, statBonus: [Int], gearType: String, defenseType: DefenseType? = nil) {
        self.statBonus = statBonus
        self.gearType = gearType
        self.defenseType = defenseType
        
        // Super constructor for item parent class
        super.init(id: id, name: name, description: description, rarity: rarity, inventorySpace: inventorySpace, goldValue: goldValue, levelRequirement: levelRequirement)
    }
    
    // Check if two gear objects are the same type
    func isSameTypeAs(gear: Gear) -> Bool {
        return (self.gearType == gear.gearType)
    }
}
