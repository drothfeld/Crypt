//
//  NumberRange.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/24/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

struct NumberRange {
    // Fields
    var minValue: Int
    var maxValue: Int
    
    // Constructor
    init(minValue: Int, maxValue: Int) {
        self.minValue = minValue
        self.maxValue = maxValue
    }
    
    // Returns a random number between the minimum and maximum values
    func randomValueInRange() -> Int {
        return (Int(arc4random_uniform(UInt32(self.maxValue))) + self.minValue)
    }
    
    // Checks whether the number range's maximum value is greater than 0
    func isNonZero() -> Bool {
        return (self.maxValue != 0 && self.minValue != 0)
    }
}
