//
//  Weapons.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/25/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

let TEST_WEAPON: Weapon = Weapon(
    id: 3300001,
    name: "Test Weapon",
    description: "Used by programmers to test the functionality of the weapon class. Not obtainable in regular gameplay.",
    rarity: special_rarity,
    inventorySpace: 1,
    goldValue: 100,
    levelRequirement: 10,
    damageType: [physical_melee_damage, thunder_damage],
    damageRange: NumberRange(minValue: 75, maxValue: 100),
    healRange: NumberRange(minValue: 5, maxValue: 10),
    hitChance: 0.75,
    statBonus: [5, 2, 3, 1, 2, 2] // [HEALTH, MANA, STR, MAGIC, DEF, SPEED]
)
