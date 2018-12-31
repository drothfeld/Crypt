//
//  Hands.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/30/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

let TEST_HANDS: Gear = Gear(
    id: 3106001,
    name: "Test Hands",
    description: "Used by programmers to test the functionality of the gear class. Not obtainable in regular gameplay.",
    rarity: special_rarity,
    inventorySpace: 1,
    goldValue: 100,
    levelRequirement: 10,
    statBonus: [5, 5, 5, 5, 5, 5],
    gearType: "Hands"
)

let cloth_gloves: Gear = Gear(
    id: 3106002,
    name: "Cloth Gloves",
    description: "Just enough to prevent your sword from giving you blisters.",
    rarity: ordinary_rarity,
    inventorySpace: 1,
    goldValue: 1,
    levelRequirement: 1,
    statBonus: [0, 0, 0, 0, 0, 0],
    gearType: "Hands"
)
