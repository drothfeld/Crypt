//
//  Helms.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/30/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

let TEST_HELM: Gear = Gear(
    id: 3101001,
    name: "Test Helm",
    description: "Used by programmers to test the functionality of the gear class. Not obtainable in regular gameplay.",
    rarity: special_rarity,
    inventorySpace: 1,
    goldValue: 100,
    levelRequirement: 10,
    statBonus: [5, 5, 5, 5, 5, 5],
    gearType: "Helm"
)

let just_the_hair_on_your_head: Gear = Gear(
    id: 3101002,
    name: "Just the Hair on Your Head",
    description: "Your character doesn't start with a fancy magical helmet. The only thing protecting your face from a stray arrow are your elegant wavy curls.",
    rarity: ordinary_rarity,
    inventorySpace: 0,
    goldValue: 10,
    levelRequirement: 1,
    statBonus: [0, 0, 0, 0, 0, 0],
    gearType: "Helm"
)
