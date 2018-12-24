//
//  DamageType.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/23/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

class DamageType {
    // Fields
    var name: String
    var description: String
    var strongAgainstDefenseType: [DefenseType]
    var weakAgainstDefenseType: [DefenseType]
    var isMagic: Bool
    var isMelee: Bool
    var isRanged: Bool
    
    // Constructor
    init(name: String, description: String, strongAgainstDefenseType: [DefenseType], weakAgainstDefenseType: [DefenseType], isMagic: Bool, isMelee: Bool, isRanged: Bool) {
        self.name = name
        self.description = description
        self.strongAgainstDefenseType = strongAgainstDefenseType
        self.weakAgainstDefenseType = weakAgainstDefenseType
        self.isMagic = isMagic
        self.isMelee = isMelee
        self.isRanged = isRanged
    }
    
    // Checks if two damage types are the same
    func isEqualsTo(damageType: DamageType) -> Bool {
        return (self.name == damageType.name)
    }
    
    // Checks if a damage type is strong against a defense type
    func isStrongAgainst(defenseType: DefenseType) -> Bool {
        for strongAgainstType in self.strongAgainstDefenseType {
            if strongAgainstType.isEqualsTo(defenseType: defenseType) {
                return true
            }
        }
        return false
    }
    
    // Checks if a damage type is weak against a defense type
    func isWeakAgainst(defenseType: DefenseType) -> Bool {
        for weakAgainstType in self.weakAgainstDefenseType {
            if weakAgainstType.isEqualsTo(defenseType: defenseType) {
                return true
            }
        }
        return false
    }
}
