//
//  Inventory.swift
//  Crypt
//
//  Created by Dylan Rothfeld on 12/28/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Foundation

class Inventory {
    // Fields
    var maxStorageCapacity: Int
    var currentStorageCapacity: Int
    var currentGold: Int
    var inventoryItems: [Item]
    
    // Constructor
    init() {
        self.maxStorageCapacity = 20
        self.currentStorageCapacity = 20
        self.currentGold = 0
        self.inventoryItems = []
    }
    
    // Returns whether the inventory is full
    func isFull() -> Bool {
        if (self.currentStorageCapacity == 0) {
            return true
        }
        return false
    }
    
    // Returns whether there is enough free space for a new item
    func isSpaceAvailable(item: Item) -> Bool {
        if ((self.maxStorageCapacity - self.currentStorageCapacity) >= item.inventorySpace) {
            return true
        }
        return false
    }
    
    // Add a new item to the inventory
    func addItem(item: Item) {
        self.inventoryItems.append(item)
        self.currentStorageCapacity -= item.inventorySpace
    }
    
    // Remove an item from the inventory
    func removeItem(item: Item) {
        for (index, inventoryItem) in self.inventoryItems.enumerated() {
            if inventoryItem.isEqualTo(item: item) {
                self.inventoryItems.remove(at: index)
                self.currentStorageCapacity += item.inventorySpace
                return
            }
        }
    }
    
    // Returns whether a specific item is in the inventory
    func containsItem(item: Item) -> Bool {
        for inventoryItem in self.inventoryItems {
            if inventoryItem.isEqualTo(item: item) {
                return true
            }
        }
        return false
    }
    
}
