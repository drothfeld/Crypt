//
//  DefenseType.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/23/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

class DefenseType {
    // Fields
    var name: String
    var description: String
    
    // Constructor
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
    
    // Checks if two defense types are the same
    func isEqualsTo(defenseType: DefenseType) -> Bool {
        return (self.name == defenseType.name)
    }
}
