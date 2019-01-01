//
//  Relics.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/31/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

let TEST_RELIC = Relic(
    id: 3200001,
    name: "Test Relic",
    description: "Used by programmers to test the functionality of the relic class. Not obtainable in regular gameplay.",
    rarity: special_rarity,
    inventorySpace: 1,
    goldValue: 100,
    levelRequirement: 10,
    damageType: [undead_damage],
    healRange: NumberRange(minValue: -100, maxValue: 0),
    damageRange: NumberRange(minValue: 150, maxValue: 200)
)
