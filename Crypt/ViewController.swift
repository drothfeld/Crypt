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
        var testCharacter = Character(playerName: "Bongo")
        var testMonster = TEST_MONSTER
        
        testCharacter.levelUp()
        // PAUSE PROGRAM EXECUTION, CHECK VALUES
    }
}

