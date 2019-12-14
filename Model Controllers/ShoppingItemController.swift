//
//  ShoppingItemController.swift
//  Shopping List
//
//  Created by Kevin Stewart on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class ShoppingItemController {
    var shoppingItem: [ShoppingItem] {
        
        let result = [
        ShoppingItem(name: "Apple", imageName: "apple", isAdded: false),
        ShoppingItem(name: "Grapes", imageName: "grapes", isAdded: false),
        ShoppingItem(name: "Milk", imageName: "milk", isAdded: false),
        ShoppingItem(name: "Muffin", imageName: "muffin", isAdded: false),
        ShoppingItem(name: "Popcorn", imageName: "popcorn", isAdded: false),
        ShoppingItem(name: "Soda", imageName: "soda", isAdded: false),
        ShoppingItem(name: "Strawberries", imageName: "strawberries", isAdded: false)
        ]
    
        return result
    }
    
    
}
