//
//  MonsterType.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/23/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

struct MonsterType {
    // Fields
    var name: String
    var abbreviation: String
    var description: String
    
    // Constructor
    init(name: String, abbreviation: String, description: String) {
        self.name = name
        self.abbreviation = abbreviation
        self.description = description
    }
    
    // Checks if two monster types are the same
    func isEqualTo(monsterType: MonsterType) -> Bool {
        return (self.name == monsterType.name)
    }
}
