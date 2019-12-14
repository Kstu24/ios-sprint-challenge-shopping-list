//
//  ShoppingItem.swift
//  Shopping List
//
//  Created by Kevin Stewart on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

let itemNames = ["Apple", "Grapes", "Milk", "Muffin", "Popcorn", "Soda", "Strawberries"]

struct ShoppingItem {
    
    var name: String
    var isAdded: Bool
    
    init(name: String, isAdded: Bool) {
        self.name = name
        self.isAdded = isAdded
    }
}
