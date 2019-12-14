//
//  ShoppingItem.swift
//  Shopping List
//
//  Created by Kevin Stewart on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

var itemNames = ["Apple", "Grapes", "Milk", "Muffin", "Popcorn", "Soda", "Strawberries"]

struct ShoppingItem {
    
    
    var name: String
    var image: UIImage
    var isAdded: Bool
    
    init(name: String, imageName: String, isAdded: Bool) {
        self.name = name
        self.image = UIImage(named: imageName)!
        self.isAdded = isAdded
    }
    
    //MARK: - Properties
    
    init() {
        loadFromPersistenStore()
    }
    private(set) var shoppingItems: [ShoppingItem] = []
    
    private var persistentFileURL: URL? {
        let fileManger = FileManager.default
        guard let documents = fileManger.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        
    
        return documents.appendingPathComponent("shoppingItems.list")
    }
    
    //MARK: - Functions
    
    
    func saveToPersistentStore() {
        guard let url = persistentFileURL else { return }
        
        
        do {
            let encoder = PropertyListEncoder()
            let data = try encoder.encode(itemNames)
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
            itemNames = try decoder.decode([ShoppingItem].self, from: data)
         } catch {
             print("Error saving shopping item data: \(error)")
         }
     }
    
}
