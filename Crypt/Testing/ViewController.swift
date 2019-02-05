//
//  ViewController.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/15/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Cocoa
import SpriteKit
import GameplayKit

class ViewController: NSViewController {

    @IBOutlet var skView: SKView!
    var debugLogDisplay: SKLabelNode!
    var debugLogFull: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.skView {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                debugLogDisplay = scene.childNode(withName: "//debugLog") as? SKLabelNode
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            view.showsFPS = true
            view.showsNodeCount = true
        }
        TESTING_MODEL_FUNCTIONALITY()
    }
    
    // prints new log text to the scene
    func updateLog(text: String) {
        let debugLogSplitText = debugLogDisplay.text?.components(separatedBy: .newlines)
        debugLogDisplay.text = debugLogSplitText![1] + "\n" +
                        debugLogSplitText![2] + "\n" +
                        debugLogSplitText![3] + "\n" +
                        debugLogSplitText![4] + "\n" +
                        debugLogSplitText![5] + "\n: " + text
        
    }
    
    // Used to test the functionality of the different models
    func TESTING_MODEL_FUNCTIONALITY() {
        let testCharacter = Character(playerName: "Bongo")
        let testMonster = TEST_MONSTER
        
        // Testing character level up
        testCharacter.levelUp()
        updateLog(text: "character leveled up!")
//        testCharacter.applyStatBonus(statBonus: [999, 999, 999, 999, 999, 999])
        
        // Character attacks monster
        TESTING_CHARACTER_ATTACK_MONSTER(character: testCharacter, monster: testMonster)
        // Monster attacks character
        TESTING_MONSTER_ATTACK_CHARACTER(monster: testMonster, character: testCharacter)
        
        // PAUSE PROGRAM EXECUTION, CHECK VALUES
    }
    
    // Used to test a character attacking a monster functionality
    func TESTING_CHARACTER_ATTACK_MONSTER(character: Character, monster: Monster) {
        if (character.equippedWeapon.attackMisses()) {
            updateLog(text: "character attack missed the monster!")
        } else {
            let damageDone = character.equippedWeapon.damageOnHit(monster: monster, character: character)
            monster.takeDamage(damageAmount: damageDone)
            updateLog(text: "character attack does " + String(damageDone) + " damage to the monster!")
            
            // Check if monster is killed
            if (monster.isDead()) {
                updateLog(text: "character has killed the monster!")
                
                // Check if the monster drops any bonus loot
                if (monster.dropsLoot()) {
                    updateLog(text: "monster dropped some loot!")
                }
                
                // Check if the monster is guarenteed to drop specific loot
                if (monster.lootGuaranteedToDrop != nil) {
                    for droppedItem in monster.lootGuaranteedToDrop! {
                        if character.hasInventorySpaceFor(item: droppedItem) {
                            character.inventory.addItem(item: droppedItem)
                            updateLog(text: "character added " + droppedItem.name + " to the inventory.")
                            updateLog(text: "character's inventory has " + String(character.inventory.currentStorageCapacity) + " free spaces left.")
                        }
                        else {
                            updateLog(text: "character doesn't have enough inventory space for: " + droppedItem.name)
                        }
                    }
                }
            }
        }
    }
    
    // Used to test a monster attacking a character functionality
    func TESTING_MONSTER_ATTACK_CHARACTER(monster: Monster, character: Character) {
        if (monster.attackMisses()) {
            updateLog(text: "monster attack missed the character!")
        } else {
            let damageDone = monster.damageOnHit(character: character)
            character.takeDamage(damageAmount: damageDone)
            updateLog(text: "monster attack does " + String(damageDone) + " damage to the character!")
            
            // Check if character is killed
            if (character.isDead()) {
                updateLog(text: "monster has killed the character!")
            }
        }
    }
}

