//
//  Back.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/30/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

let TEST_BACK: Gear = Gear(
    id: 3107001,
    name: "Test Back",
    description: "Used by programmers to test the functionality of the gear class. Not obtainable in regular gameplay.",
    rarity: special_rarity,
    inventorySpace: 1,
    goldValue: 100,
    levelRequirement: 10,
    statBonus: [5, 5, 5, 5, 5, 5],
    gearType: "Back"
)

let cosplay_cape: Gear = Gear(
    id: 3107002,
    name: "Cosplay Cape",
    description: "You think this makes you look tougher, but in reality it makes you look like a dork.",
    rarity: ordinary_rarity,
    inventorySpace: 1,
    goldValue: 1,
    levelRequirement: 1,
    statBonus: [0, 0, 0, 0, 0, 0],
    gearType: "Back"
)
