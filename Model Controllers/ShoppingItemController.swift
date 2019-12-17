//
//  ShoppingItemController.swift
//  Shopping List
//
//  Created by Kevin Stewart on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class ShoppingItemController {
    let itemNames = ["Apple", "Grapes", "Milk", "Muffin", "Popcorn", "Soda", "Strawberries"]
    var shoppingItems: [ShoppingItem] = []
    
    init() {
        createItems()
        loadFromPersistenStore()
    
    }
    
    private var persistentFileURL: URL? {
        let fileManger = FileManager.default
        guard let documents = fileManger.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        
    
        return documents.appendingPathComponent("shoppingItems.list")
    }
    
    //MARK: - Functions
    
    func createItems() {
        for itemName in itemNames {
            let shoppingItem = ShoppingItem(name: itemName, imageName: itemName.lowercased(), isAdded: false)
            shoppingItems.append(shoppingItem)
            
        }
        saveToPersistentStore()
    }
    
    
    func saveToPersistentStore() {
        guard let url = persistentFileURL else { return }
        
        
        do {
            let encoder = PropertyListEncoder()
            let data = try encoder.encode(shoppingItems)
            try data.write(to: url)
            
        } catch {
            print("Error saving shopping item data: \(error)")
        }
    }
     func loadFromPersistenStore() {
         let fileManager = FileManager.default
         guard let url = persistentFileURL,
             fileManager.fileExists(atPath: url.path) else { return }

         do {
             let data = try Data(contentsOf: url)
             let decoder = PropertyListDecoder()
            shoppingItems = try decoder.decode([ShoppingItem].self, from: data)
         } catch {
             print("Error saving shopping item data: \(error)")
         }
     }
    
}
