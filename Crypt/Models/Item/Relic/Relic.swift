//
//  Relic.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/23/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

class Relic: Item {
    // Fields
    var damageType: DamageType
    var healRange: NumberRange? = NumberRange(minValue: 0, maxValue: 0)
    var damageRange: NumberRange? = NumberRange(minValue: 0, maxValue: 0)
    
    // Constructor
    init(name: String, description: String, rarity: Rarity, inventorySpace: Int, goldValue: Int, damageType: DamageType, healRange: NumberRange?, damageRange: NumberRange?) {
        self.damageType = damageType
        self.healRange = healRange
        self.damageRange = damageRange
        
        // Super constructor for item parent class
        super.init(name: name, description: description, rarity: rarity, inventorySpace: inventorySpace, goldValue: goldValue)
    }
    
    // Checks if the relic does damage
    func doesDamage() -> Bool {
        return ((damageRange?.isNonZero())!)
    }
    
    // Checks if the relic heals the user
    func doesHealing() -> Bool {
        return ((healRange?.isNonZero())!)
    }
}
