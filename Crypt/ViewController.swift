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
        testCharacter.levelUp()
        
        // Testing character attacking monster
        if (testCharacter.equippedWeapon.attackMisses()) {
            print("character attack missed the monster!")
        } else {
            let damageDone = testCharacter.equippedWeapon.damageOnHit(monster: testMonster, character: testCharacter)
            testMonster.takeDamage(damageAmount: damageDone)
            print("character attack does " + String(damageDone) + " damage to the monster!")
            
            // Check if monster is killed
            if (testMonster.isDead()) {
                print("character has killed the monster!")
            }
        }
        
        // PAUSE PROGRAM EXECUTION, CHECK VALUES
    }
}

