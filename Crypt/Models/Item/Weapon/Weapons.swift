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
    critChance: 0.40,
    statBonus: [5, 2, 3, 1, 2, 2]  // [HEALTH, MANA, STR, MAGIC, DEF, SPEED]
)

let rusted_short_sword: Weapon = Weapon(
    id: 3300002,
    name: "Rusted Short Sword",
    description: "The most basic of all weapons. Every new character starting their journey through the Crypt receives one of these as a means to defend against the hordes of monsters they will encounter. But who is giving away all of these swords... ",
    rarity: ordinary_rarity,
    inventorySpace: 1,
    goldValue: 5,
    levelRequirement: 1,
    damageType: [physical_melee_damage],
    damageRange: NumberRange(minValue: 8, maxValue: 15),
    healRange: NumberRange(minValue: 0, maxValue: 0),
    hitChance: 0.95,
    critChance: 0.05,
    statBonus: [0, 0, 0, 0, 0 ,0]  // [HEALTH, MANA, STR, MAGIC, DEF, SPEED]
)
