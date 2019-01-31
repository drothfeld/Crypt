//
//  Monsters.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/26/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

let TEST_MONSTER: Monster = Monster(
    id: 2000001,
    name: "Test Monster",
    description: "Used by programmers to test the functionality of the monster class. Not encounterable in regular gameplay",
    level: 15,
    speed: 23,
    health: 166,
    strength: 50,
    defense: 32,
    critChance: 0.05,
    hitChance: 0.80,
    isBoss: false,
    damageType: [fire_damage, demon_damage, physical_melee_damage],
    damageRange: NumberRange(minValue: 25, maxValue: 37),
    defenseType: demon_defense,
    lootRarityDropPotential: [ordinary_rarity, treasured_rarity],
    lootDropChance: 0.50,
    lootGuaranteedToDrop: [TEST_RELIC, TEST_WEAPON],
    goldDropRange: NumberRange(minValue: 13, maxValue: 20),
    baseExperienceAwarded: 6
)
