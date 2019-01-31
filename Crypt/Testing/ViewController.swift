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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TESTING_MODEL_FUNCTIONALITY()

        if let view = self.skView {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
    
    // Used to test the functionality of the different models
    func TESTING_MODEL_FUNCTIONALITY() {
        let testCharacter = Character(playerName: "Bongo")
        let testMonster = TEST_MONSTER
        
        // Testing character level up
        testCharacter.levelUp()
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
            print("character attack missed the monster!")
        } else {
            let damageDone = character.equippedWeapon.damageOnHit(monster: monster, character: character)
            monster.takeDamage(damageAmount: damageDone)
            print("character attack does " + String(damageDone) + " damage to the monster!")
            
            // Check if monster is killed
            if (monster.isDead()) {
                print("character has killed the monster!")
                
                // Check if the monster drops any bonus loot
                if (monster.dropsLoot()) {
                    print("monster dropped some loot!")
                }
                
                // Check if the monster is guarenteed to drop specific loot
                if (monster.lootGuaranteedToDrop != nil) {
                    for droppedItem in monster.lootGuaranteedToDrop! {
                        if character.hasInventorySpaceFor(item: droppedItem) {
                            character.inventory.addItem(item: droppedItem)
                            print("character added " + droppedItem.name + " to the inventory")
                            print("character's inventory has " + String(character.inventory.currentStorageCapacity) + " free spaces left.")
                        }
                        else {
                            print("character doesn't have enough inventory space for: " + droppedItem.name)
                        }
                    }
                }
            }
        }
    }
    
    // Used to test a monster attacking a character functionality
    func TESTING_MONSTER_ATTACK_CHARACTER(monster: Monster, character: Character) {
        if (monster.attackMisses()) {
            print("monster attack missed the character!")
        } else {
            let damageDone = monster.damageOnHit(character: character)
            character.takeDamage(damageAmount: damageDone)
            print("monster attack does " + String(damageDone) + " damage to the character!")
            
            // Check if character is killed
            if (character.isDead()) {
                print("monster has killed the character!")
            }
        }
    }
}

