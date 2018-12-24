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
    var healRange: [Int]? = [0, 0]
    var damageRange: [Int]? = [0, 0]
    
    // Constructor
    init(name: String, description: String, rarity: Rarity, inventorySpace: Int, goldValue: Int, damageType: DamageType, healRange: [Int]? = [0, 0], damageRange: [Int]? = [0, 0]) {
        self.damageType = damageType
        self.healRange = healRange
        self.damageRange = damageRange
        
        // Super constructor for item parent class
        super.init(name: name, description: description, rarity: rarity, inventorySpace: inventorySpace, goldValue: goldValue)
    }
    
    // Checks if the relic does damage
    func doesDamage() -> Bool {
        return (damageRange![1] > 0 )
    }
    
    // Checks if the relic heals the user
    func doesHealing() -> Bool {
        return (healRange![1] > 0)
    }
}
