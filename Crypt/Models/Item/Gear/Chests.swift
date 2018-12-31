//
//  Chests.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/30/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

let TEST_CHEST: Gear = Gear(
    id: 3103001,
    name: "Test Chest",
    description: "Used by programmers to test the functionality of the gear class. Not obtainable in regular gameplay.",
    rarity: special_rarity,
    inventorySpace: 1,
    goldValue: 100,
    levelRequirement: 10,
    statBonus: [5, 5, 5, 5, 5, 5],
    gearType: "Chest"
)

let old_t_shirt: Gear = Gear(
    id: 3103002,
    name: "Old T-Shirt",
    description: "Has the logo of your favorite band printed on the front.",
    rarity: ordinary_rarity,
    inventorySpace: 1,
    goldValue: 1,
    levelRequirement: 1,
    statBonus: [0, 0, 0, 0, 0, 0],
    gearType: "Chest"
)
