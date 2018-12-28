//
//  Character.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/27/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

class Character {
    // Fields
    var playerName: String
    var level: Int = 1
    
    var equippedWeapon: Weapon
//    var equippedHelm: Helm
//    var equippedShoulder: Shoulder
//    var equippedChest: Chest
//    var equippedLegs: Legs
//    var equippedFeet: Feet
//    var equippedHands: Hands
//    var equippedBack: Back
    
    var inventory: Inventory = Inventory()
    
    var experiencePointsTillNextLevel: Int = 100
    var currentExperiencePoints: Int = 0
    
    var statTotalHealth: Int = 0
    var statCurrentHealth: Int = 0
    var statTotalMana: Int = 0
    var statCurrentMana: Int = 0
    var statStrength: Int = 0
    var statMagic: Int = 0
    var statDefense: Int = 0
    var statSpeed: Int = 0
    
    // Constructor
    init(playerName: String) {
        self.playerName = playerName
        self.level = 1
        self.equippedWeapon = short_rusted_sword
        self.generateNewCharacterStats()
    }
    
    // Setting starting character stat values
    private func generateNewCharacterStats() {
        self.statTotalHealth = NumberRange(minValue: 25, maxValue: 30).randomValueInRange()
        self.statCurrentHealth = self.statTotalHealth
        self.statTotalMana = NumberRange(minValue: 25, maxValue: 30).randomValueInRange()
        self.statCurrentMana = self.statTotalMana
        self.statStrength = NumberRange(minValue: 5, maxValue: 10).randomValueInRange()
        self.statMagic = NumberRange(minValue: 5, maxValue: 10).randomValueInRange()
        self.statDefense = NumberRange(minValue: 5, maxValue: 10).randomValueInRange()
        self.statSpeed = NumberRange(minValue: 5, maxValue: 10).randomValueInRange()
    }
    
    // Character reaches a new level
    func levelUp() {
        self.level += 1
        self.currentExperiencePoints = 0
        self.experiencePointsTillNextLevel = Int(Double(self.experiencePointsTillNextLevel) * 1.25)
        
        self.statTotalHealth += NumberRange(minValue: 25, maxValue: 30).randomValueInRange()
        self.statCurrentHealth = self.statTotalHealth
        self.statTotalMana += NumberRange(minValue: 25, maxValue: 30).randomValueInRange()
        self.statCurrentMana = self.statTotalMana
        self.statStrength += NumberRange(minValue: 5, maxValue: 10).randomValueInRange()
        self.statMagic += NumberRange(minValue: 5, maxValue: 10).randomValueInRange()
        self.statDefense += NumberRange(minValue: 5, maxValue: 10).randomValueInRange()
        self.statSpeed += NumberRange(minValue: 5, maxValue: 10).randomValueInRange()
    }
    
    // Apply a stat bonus from an equipped item to the character's stats
    func applyStatBonus(statBonus: [Int]) {
        self.statTotalHealth += statBonus[0]
        self.statTotalMana += statBonus[1]
        self.statStrength += statBonus[2]
        self.statMagic += statBonus[3]
        self.statDefense += statBonus[4]
        self.statSpeed += statBonus[5]
    }
    
    // Remove a stat bonus from an unequipped item from the character's stats
    func removeStatBonus(statBonus: [Int]) {
        self.statTotalHealth -= statBonus[0]
        self.statTotalMana -= statBonus[1]
        self.statStrength -= statBonus[2]
        self.statMagic -= statBonus[3]
        self.statDefense -= statBonus[4]
        self.statSpeed -= statBonus[5]
    }
    
    // Returns whether a character is at the proper level to use an item
    func isCorrectLevelToUse(item: Item) -> Bool {
        return (self.level >= item.levelRequirement)
    }
    
    // Heals a character for a specified amount
    func restoreHealth(healAmount: Int) {
        if (self.statCurrentHealth + healAmount > self.statTotalHealth) {
            self.statCurrentHealth = self.statTotalHealth
        } else {
            self.statCurrentHealth += healAmount
        }
    }
    
    // Restores mana to a character for a specified amount
    func restoreMana(manaAmount: Int) {
        if (self.statCurrentMana + manaAmount > self.statTotalMana) {
            self.statCurrentMana = self.statTotalMana
        } else {
            self.statCurrentMana += manaAmount
        }
    }
    
    // Returns whether a character has enough inventory space to store an item
//    func hasEnoughInventorySpaceToStore(item: Item) -> Bool {
//    }
    
}
