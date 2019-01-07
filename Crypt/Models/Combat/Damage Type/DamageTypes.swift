//
//  DamageTypes.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/24/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

let fire_damage = DamageType(
    name: "Fire",
    description: "Good against: Flesh, Cloth, and Gemstone defenses. Bad against: Plate, Demon, and Magic defenses.",
    strongAgainstDefenseType: [flesh_defense, cloth_defense, gemstone_defense],
    badAgainstDefenseType: [plate_defense, demon_defense, magic_defense]
)

let ice_damage = DamageType(
    name: "Ice",
    description: "Good against: Plate, and Demon defenses. Bad against: Environmental, Magic, and Gemstone defenses.",
    strongAgainstDefenseType: [plate_defense, demon_defense],
    badAgainstDefenseType: [environmental_defense, magic_defense, gemstone_defense]
)

let thunder_damage = DamageType(
    name: "Thunder",
    description: "Good against: Leather, and Environmental defenses. Bad against: Demon, Holy, and Magic defenses.",
    strongAgainstDefenseType: [leather_defense, environmental_defense],
    badAgainstDefenseType: [demon_defense, holy_defense, magic_defense]
)

let physical_melee_damage = DamageType(
    name: "Physical Melee",
    description: "Good against: Flesh, Cloth, and Magic defenses. Bad against: Plate, Demon, and Soul defenses.",
    strongAgainstDefenseType: [flesh_defense, cloth_defense, magic_defense],
    badAgainstDefenseType: [plate_defense, demon_defense, soul_defense]
)

let physical_ranged_damage = DamageType(
    name: "Physical Ranged",
    description: "Good against: Flesh, Leather, and Holy defenses. Bad against: Plate, Environmental, Magic, and Gemstone defenses.",
    strongAgainstDefenseType: [flesh_defense, leather_defense, holy_defense],
    badAgainstDefenseType: [plate_defense, environmental_defense, magic_defense, gemstone_defense]
)

let demon_damage = DamageType(
    name: "Demon",
    description: "Good against: Plate, Holy, and Soul defenses. Bad against: Demon, Magic, and Gemstone defenses.",
    strongAgainstDefenseType: [plate_defense, holy_defense, soul_defense],
    badAgainstDefenseType: [demon_defense, magic_defense, gemstone_defense]
)

let holy_damage = DamageType(
    name: "Holy",
    description: "Good against: Leather, Demon, and Magic defenses. Bad against: Cloth, Holy, and Soul defenses.",
    strongAgainstDefenseType: [leather_defense, demon_defense, magic_defense],
    badAgainstDefenseType: [cloth_defense, holy_defense, soul_defense]
)

let ethereal_damage = DamageType(
    name: "Ethereal",
    description: "Good against: Environmental, Demon, Soul, and Gemstone defenses. Bad against: Plate, Holy, and Magic defenses.",
    strongAgainstDefenseType: [environmental_defense, demon_defense, soul_defense, gemstone_defense],
    badAgainstDefenseType: [plate_defense, holy_defense, magic_defense]
)

let undead_damage = DamageType(
    name: "Undead",
    description: "Good against: Flesh, Cloth, Leather, and Environmental defenses. Bad against: Demon, Holy, and Magic defenses.",
    strongAgainstDefenseType: [flesh_defense, cloth_defense, leather_defense, environmental_defense],
    badAgainstDefenseType: [demon_defense, holy_defense, magic_defense]
)

let chaos_damage = DamageType(
    name: "Chaos",
    description: "Good against: Demon, Holy, and Gemstone defenses. Bad against: Flesh, Cloth, Leather, and Environmental defenses.",
    strongAgainstDefenseType: [demon_defense, holy_defense, gemstone_defense],
    badAgainstDefenseType: [flesh_defense, cloth_defense, leather_defense, environmental_defense]
)

let divine_damage = DamageType(
    name: "Divine",
    description: "Good against: Flesh, Cloth, Leather, Plate, Environmental, Demon, Holy, Magic, and Gemstone defenses. Bad against: soul defenses.",
    strongAgainstDefenseType: [flesh_defense, cloth_defense, leather_defense, plate_defense, environmental_defense, demon_defense, holy_defense, magic_defense, gemstone_defense],
    badAgainstDefenseType: [soul_defense]
)
