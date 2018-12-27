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
    var critChance: Double
    var statBonus: [Int] // [HEALTH, MANA, STR, MAGIC, DEF, SPEED]
    
    // Constructor
    init(id: Int, name: String, description: String, rarity: Rarity, inventorySpace: Int, goldValue: Int, levelRequirement: Int, damageType: [DamageType], damageRange: NumberRange?, healRange: NumberRange?, hitChance: Double, critChance: Double, statBonus: [Int]) {
        self.damageType = damageType
        self.damageRange = damageRange
        self.healRange = healRange
        self.hitChance = hitChance
        self.critChance = critChance
        self.statBonus = statBonus
        
        // Super constructor for item parent class
        super.init(id: id, name: name, description: description, rarity: rarity, inventorySpace: inventorySpace, goldValue: goldValue, levelRequirement: levelRequirement)
    }
    
    // Returns a simple string of a weapon object
    func toString() -> String {
        return ("Weapon Name: " + self.name)
    }
    
    // Checks if the weapon heal the user
    private func doesHealing() -> Bool {
        return ((self.healRange?.isNonZero())!)
    }
    
    // Check whether the weapon preformed a critical hit
    private func attackCrits() -> Bool {
        if (NumberRange(minValue: 0, maxValue: 100).randomValueInRange() <= Int(self.critChance * 100.00)) {
            return false
        }
        return true
    }
    
    // Check if the weapon hits or misses
    func attackMisses() -> Bool {
        if (NumberRange(minValue: 0, maxValue: 100).randomValueInRange() <= Int(self.hitChance * 100.00)) {
            return false
        }
        return true
    }
    
    // Returns the amount of damage a weapon does given attack and defense types
    func damageOnHit(monster: Monster, character: Character) -> Int {
        var damageMultiplier = 1.0
        let damageBaseAmount = (self.damageRange?.randomValueInRange())! + character.statStrength - monster.defense
        if (self.attackCrits()) { damageMultiplier += 1.0 }
        for type in self.damageType {
            if type.isStrongAgainst(defenseType: monster.defenseType) {
                damageMultiplier += 0.25
            }
            else if type.isbadAgainst(defenseType: monster.defenseType) {
                damageMultiplier -= 0.25
            }
        }
        return Int(Double(damageBaseAmount) * damageMultiplier)
    }
    
    // Returns the amount of healing a weapon does on hit
    func healOnHit(character: Character) -> Int {
        if (!self.doesHealing()) {
            return 0
        } else {
            return self.healRange!.randomValueInRange()
        }
    }
}
