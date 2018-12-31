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
    var equippedHelm: Gear
    var equippedShoulder: Gear
    var equippedChest: Gear
    var equippedLegs: Gear
    var equippedFeet: Gear
    var equippedHands: Gear
    var equippedBack: Gear
    
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
        self.equippedWeapon = rusted_short_sword
        self.equippedHelm = just_the_hair_on_your_head
        self.equippedShoulder = torn_leather_pads
        self.equippedChest = old_t_shirt
        self.equippedLegs = denim_jeans
        self.equippedFeet = worn_sneakers
        self.equippedHands = cloth_gloves
        self.equippedBack = cosplay_cape
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
    func hasInventorySpaceFor(item: Item) -> Bool {
        return self.inventory.isSpaceAvailable(item: item)
    }
    
    // Attempt to equip a new weapon if there is inventory space for the old one
    func equipNewWeapon(weapon: Weapon) {
        if (self.inventory.isSpaceAvailable(item: self.equippedWeapon)) {
            self.inventory.addItem(item: self.equippedWeapon)
            self.equippedWeapon = weapon
        }
    }
    
    // Attempt to equip a new gear item if there is inventory space for the old one
    func equipNewGear(gear: Gear) {
        switch gear.gearType {
            case "Helm":
                if (self.inventory.isSpaceAvailable(item: self.equippedHelm)) {
                    self.inventory.addItem(item: self.equippedWeapon)
                    self.equippedHelm = gear
                }
            case "Shoulder":
                if (self.inventory.isSpaceAvailable(item: self.equippedShoulder)) {
                    self.inventory.addItem(item: self.equippedShoulder)
                    self.equippedShoulder = gear
                }
            case "Chest":
                if (self.inventory.isSpaceAvailable(item: self.equippedChest)) {
                    self.inventory.addItem(item: self.equippedChest)
                    self.equippedChest = gear
                }
            case "Legs":
                if (self.inventory.isSpaceAvailable(item: self.equippedLegs)) {
                    self.inventory.addItem(item: self.equippedLegs)
                    self.equippedLegs = gear
                }
            case "Feet":
                if (self.inventory.isSpaceAvailable(item: self.equippedFeet)) {
                    self.inventory.addItem(item: self.equippedFeet)
                    self.equippedFeet = gear
                }
            case "Hands":
                if (self.inventory.isSpaceAvailable(item: self.equippedHands)) {
                    self.inventory.addItem(item: self.equippedHands)
                    self.equippedHands = gear
                }
            case "Back":
                if (self.inventory.isSpaceAvailable(item: self.equippedBack)) {
                    self.inventory.addItem(item: self.equippedBack)
                    self.equippedBack = gear
                }
            default:
                print("WARNING: This statement should never be reached. The gear item you are attempting to equip does not fall under the specified categories.")
        }
    }
    
    // Character gets gold
    func getGold(gold: Int) {
        self.inventory.appendGold(goldAmount: gold)
    }
    
    // Character loses gold
    func loseGold(gold: Int) {
        self.inventory.loseGold(goldAmount: gold)
    }
    
    // Check if character has gold
    func hasGold(gold: Int) -> Bool {
        return self.inventory.hasGold(goldAmount: gold)
    }
    
}
