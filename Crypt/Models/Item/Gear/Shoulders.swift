//
//  Shoulders.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/30/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

let TEST_SHOULDER: Gear = Gear(
    id: 3102001,
    name: "Test Shoulder",
    description: "Used by programmers to test the functionality of the gear class. Not obtainable in regular gameplay.",
    rarity: special_rarity,
    inventorySpace: 1,
    goldValue: 100,
    levelRequirement: 10,
    statBonus: [5, 5, 5, 5, 5, 5],
    gearType: "Shoulder"
)

let torn_leather_pads: Gear = Gear(
    id: 3102002,
    name: "Torn Leather Pads",
    description: "More for show than anything else, won't protect you from much.",
    rarity: ordinary_rarity,
    inventorySpace: 1,
    goldValue: 1,
    levelRequirement: 1,
    statBonus: [0, 0, 0, 0, 0, 0],
    gearType: "Shoulder"
)
