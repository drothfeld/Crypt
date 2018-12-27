//
//  Monster.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/25/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

class Monster {
    // Fields
    var id: Int
    var name: String
    var description: String
    var level: Int
    var speed: Int
    var health: Int
    var strength: Int
    var defense: Int
    var critChance: Double
    var hitChance: Double
    var isBoss: Bool
    
    var damageType: [DamageType]
    var damageRange: NumberRange
    var defenseType: DefenseType
    
    var lootRarityDropPotential: [Rarity] // If monster drops loot, these are the potential rarities it can drop.
    var lootDropChance: Double // Chance monster drops any loot at all
    var lootGuaranteedToDrop: [Item]? = nil
    var goldDropRange: NumberRange
    var experienceAwarded: Int
    
    // Constructor
    init(id: Int, name: String, description: String, level: Int, speed: Int, health: Int, strength: Int, defense: Int, critChance: Double, hitChance: Double, isBoss: Bool, damageType: [DamageType], damageRange: NumberRange, defenseType: DefenseType, lootRarityDropPotential: [Rarity], lootDropChance: Double, lootGuaranteedToDrop: [Item]? = nil, goldDropRange: NumberRange, baseExperienceAwarded: Int) {
        self.id = id
        self.name = name
        self.description = description
        self.level = level
        self.speed = speed
        self.health = health
        self.strength = strength
        self.defense = defense
        self.critChance = critChance
        self.hitChance = hitChance
        self.isBoss = isBoss
        
        self.damageType = damageType
        self.damageRange = damageRange
        self.defenseType = defenseType
        
        self.lootRarityDropPotential = lootRarityDropPotential
        self.lootDropChance = lootDropChance
        self.lootGuaranteedToDrop = lootGuaranteedToDrop
        self.goldDropRange = goldDropRange
        self.experienceAwarded = baseExperienceAwarded * level * (isBoss ? 10 : 1)
    }
    
    // Returns whether the monster preformed a critical hit
    private func attackCrits() -> Bool {
        if (NumberRange(minValue: 0, maxValue: 100).randomValueInRange() <= Int(self.critChance * 100.00)) {
            return false
        }
        return true
    }
    
    // Returns whether the monster's attack hits or misses
    func attackMisses() -> Bool {
        if (NumberRange(minValue: 0, maxValue: 100).randomValueInRange() <= Int(self.hitChance * 100.00)) {
            return false
        }
        return true
    }
    
    // Returns the amount of damage a monster does given attack and defense types
    func damageOnHit(character: Character) -> Int {
        var damageMultiplier = 1.0
        let damageBaseAmount = (self.damageRange.randomValueInRange() + self.strength - character.statDefense)
        if (self.attackCrits()) { damageMultiplier += 1.0 }
        for type in self.damageType {
            if type.isStrongAgainst(defenseType: <#T##DefenseType#>) {
                damageMultiplier += 0.25
            }
            else if type.isbadAgainst(defenseType: <#T##DefenseType#>) {
                damageMultiplier -= 0.25
            }
        }
        return Int(Double(damageBaseAmount) * damageMultiplier)
    }
}
