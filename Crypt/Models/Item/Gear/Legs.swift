//
//  Legs.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/30/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

let TEST_LEGS: Gear = Gear(
    id: 3104001,
    name: "Test Legs",
    description: "Used by programmers to test the functionality of the gear class. Not obtainable in regular gameplay.",
    rarity: special_rarity,
    inventorySpace: 1,
    goldValue: 100,
    levelRequirement: 10,
    statBonus: [5, 5, 5, 5, 5, 5],
    gearType: "Legs"
)

let denim_jeans: Gear = Gear(
    id: 3104002,
    name: "Denim Jeans",
    description: "Perfect for any everyday activity, including slaying dragons.",
    rarity: ordinary_rarity,
    inventorySpace: 1,
    goldValue: 1,
    levelRequirement: 1,
    statBonus: [0, 0, 0, 0, 0, 0],
    gearType: "Legs"
)
