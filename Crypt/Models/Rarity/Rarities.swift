//
//  Rarities.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/21/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

let special_rarity = Rarity (
    name: "Special",
    abbreviation: "SP",
    description: "Has a specific purpose. Cannot be sold or dropped.",
    color: RGBColor(red: 255, green: 255, blue: 255), // WHITE
    rarityRank: 0,
    occurrenceRate: 1.0
)

let junk_rarity = Rarity (
    name: "Junk",
    abbreviation: "JK",
    description: "Why would anyone want this? Cannot be used for anything. Sell to anyone willing to buy.",
    color: RGBColor(red: 145, green: 145, blue: 145), // GREY
    rarityRank: 1,
    occurrenceRate: 0.75,
    sellValueMultiplier: 0.5
)

let ordinary_rarity = Rarity (
    name: "Common",
    abbreviation: "OR",
    description: "Has maybe a dent or two, but still functions as it should.",
    color: RGBColor(red: 249, green: 233, blue: 0), // YELLOW
    rarityRank: 2,
    occurrenceRate: 0.60,
    sellValueMultiplier: 1.0
)

let intriguing_rarity = Rarity (
    name: "Intriguing",
    abbreviation: "IG",
    description: "Not a standard run-of-the-mill find. May be embedded with strange magical properties.",
    color: RGBColor(red: 0, green: 237, blue: 169), // TEAL
    rarityRank: 3,
    occurrenceRate: 0.40,
    sellValueMultiplier: 2.5
)

let exceptional_rarity = Rarity (
    name: "Exceptional",
    abbreviation: "EX",
    description: "A rare catch indeed. Might cause onlookers to stare in wonder... and jealousy.",
    color: RGBColor(red: 65, green: 215, blue: 0), // GREEN
    rarityRank: 4,
    occurrenceRate: 0.20,
    sellValueMultiplier: 6.25
)

let treasured_rarity = Rarity (
    name: "Treasured",
    abbreviation: "TR",
    description: "Shining, glimmering, gleaming, as if it was found buried in a cave guarded by a dragon. Rare and usually powerful.",
    color: RGBColor(red: 242, green: 113, blue: 0), // ORANGE
    rarityRank: 5,
    occurrenceRate: 0.10,
    sellValueMultiplier: 9.99
)

let royal_rarity = Rarity (
    name: "Royal",
    abbreviation: "RY",
    description: "Did this belong to Queen Victoria!? Maybe it did... Exceptionally rare and powerful, and worth a king's ransom.",
    color: RGBColor(red: 0, green: 76, blue: 255), // BLUE
    rarityRank: 6,
    occurrenceRate: 0.05,
    sellValueMultiplier: 15.55
)

let divine_rarity = Rarity (
    name: "Divine",
    abbreviation: "DV",
    description: "Of the gods themselves. Only a fool would sell such perfection. Use with caution...",
    color: RGBColor(red: 180, green: 0, blue: 0), // RED
    rarityRank: 7,
    occurrenceRate: 0.0015,
    sellValueMultiplier: 99.9
)
