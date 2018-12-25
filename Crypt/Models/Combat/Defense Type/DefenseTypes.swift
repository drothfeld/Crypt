//
//  DefenseTypes.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/24/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

let flesh_defense: DefenseType = DefenseType(
    name: "Flesh",
    description: "Good against: Chaos attacks. Bad against: Fire, Physical Melee, Physical Ranged, Undead, and Divine attacks.",
    strongAgainstDamageType: [chaos_damage],
    weakAgainstDamageType: [fire_damage, physical_melee_damage, physical_ranged_damage, undead_damage, divine_damage]
)

let cloth_defense: DefenseType = DefenseType(
    name: "Cloth",
    description: "Good against: Holy, and Chaos attacks. Bad against: Fire, Physical Melee, Undead, and Divine attacks.",
    strongAgainstDamageType: [holy_damage, chaos_damage],
    weakAgainstDamageType: [fire_damage, physical_melee_damage, undead_damage, divine_damage]
)

let leather_defense: DefenseType = DefenseType(
    name: "Leather",
    description: "Good against: Chaos attacks. Bad against: Thunder, Physical Ranged, Holy, Undead, and Divine attacks.",
    strongAgainstDamageType: [chaos_damage],
    weakAgainstDamageType: [thunder_damage, physical_ranged_damage, holy_damage, undead_damage, divine_damage]
)

let plate_defense: DefenseType = DefenseType(
    name: "Plate",
    description: "Good against: Fire, Physical Melee, Physical Ranged, and Ethereal attacks. Bad against: Ice, Demon, and Divine attacks.",
    strongAgainstDamageType: [fire_damage, physical_melee_damage, physical_ranged_damage, ethereal_damage],
    weakAgainstDamageType: [ice_damage, demon_damage, divine_damage]
)

let environmental_defense: DefenseType = DefenseType(
    name: "Environmental",
    description: "Good against: Ice, Physical Ranged, and Chaos attacks. Bad against: Thunder, Ethereal, Undead, and Divine attacks.",
    strongAgainstDamageType: [ice_damage, physical_ranged_damage, chaos_damage],
    weakAgainstDamageType: [thunder_damage, ethereal_damage, undead_damage, divine_damage]
)

let demon_defense: DefenseType = DefenseType(
    name: "Demon",
    description: "Good against: Fire, Thunder, Physical Melee, Demon, and Undead attacks. Bad against: Ice, Holy, Ethereal, Chaos, and Divine attacks.",
    strongAgainstDamageType: [fire_damage, thunder_damage, physical_melee_damage, demon_damage, undead_damage],
    weakAgainstDamageType: [ice_damage, holy_damage, ethereal_damage, chaos_damage, divine_damage]
)

let holy_defense: DefenseType = DefenseType(
    name: "Holy",
    description: "Good against: Thunder, Holy, Ethereal, and Undead attacks. Bad against: Physical Ranged, Demon, Chaos, and Divine attacks.",
    strongAgainstDamageType: [thunder_damage, holy_damage, ethereal_damage, undead_damage],
    weakAgainstDamageType: [physical_ranged_damage, demon_damage, chaos_damage, divine_damage]
)

let magic_defense: DefenseType = DefenseType(
    name: "Magic",
    description: "Good against: Fire, Ice, Thunder, Physical Ranged, Demon, Ethereal, and Undead attacks. Bad against: Physical Melee, Holy, and Divine attacks.",
    strongAgainstDamageType: [fire_damage, ice_damage, thunder_damage, physical_ranged_damage, demon_damage, ethereal_damage, undead_damage],
    weakAgainstDamageType: [physical_melee_damage, holy_damage, divine_damage]
)

let soul_defense: DefenseType = DefenseType(
    name: "Soul",
    description: "Good against: Physical Melee, Holy, and Divine attacks. Bad against: Demon, and Ethereal attacks.",
    strongAgainstDamageType: [physical_melee_damage, holy_damage, divine_damage],
    weakAgainstDamageType: [demon_damage, ethereal_damage]
)

let gemstone_defense: DefenseType = DefenseType(
    name: "Gemstone",
    description: "Good against: Ice, Physical Ranged, and Demon attacks. Bad against: Fire, Ethereal, Chaos, and Divine attacks.",
    strongAgainstDamageType: [ice_damage, physical_ranged_damage, demon_damage],
    weakAgainstDamageType: [fire_damage, ethereal_damage, chaos_damage, divine_damage]
)

let divine_defense: DefenseType = DefenseType(
    name: "Divine",
    description: "Good against: Nothing. Bad against: Nothing.",
    strongAgainstDamageType: [],
    weakAgainstDamageType: []
)
