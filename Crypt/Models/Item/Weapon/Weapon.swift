//
//  Weapon.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/24/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

class Weapon: Item {
    // Fields
    var damageType: [DamageType]
    var damageRange: NumberRange? = NumberRange(minValue: 0, maxValue: 0)
    var healRange: NumberRange? = NumberRange(minValue: 0, maxValue: 0)
    var hitChance: Double
    var statBonus: [Int] // [HEALTH, MANA, STR, MAGIC, DEF, SPEED]
    
    // Constructor
    init(id: Int, name: String, description: String, rarity: Rarity, inventorySpace: Int, goldValue: Int, levelRequirement: Int, damageType: [DamageType], damageRange: NumberRange?, healRange: NumberRange?, hitChance: Double, statBonus: [Int]) {
        self.damageType = damageType
        self.damageRange = damageRange
        self.healRange = healRange
        self.hitChance = hitChance
        self.statBonus = statBonus
        
        // Super constructor for item parent class
        super.init(id: id, name: name, description: description, rarity: rarity, inventorySpace: inventorySpace, goldValue: goldValue, levelRequirement: levelRequirement)
    }
    
    // Returns a simple string of a weapon object
    func toString() -> String {
        return ("Weapon Name: " + self.name)
    }
    
    // Checks if the weapon heal the user
    func doesHealing() -> Bool {
        return ((self.healRange?.isNonZero())!)
    }
    
    // Check if the weapon hits or misses
    func attackMisses() -> Bool {
        if (NumberRange(minValue: 0, maxValue: 100).randomValueInRange() <= Int(self.hitChance * 100.00)) {
            return false
        }
        return true
    }
}
