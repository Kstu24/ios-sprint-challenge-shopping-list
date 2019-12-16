//
//  ShoppingItem.swift
//  Shopping List
//
//  Created by Kevin Stewart on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit



struct ShoppingItem: Codable {
    
    
    var name: String
    var imageName: String
    var isAdded: Bool
    
    init(name: String, imageName: String, isAdded: Bool) {
        self.name = name
        self.imageName = imageName
        self.isAdded = isAdded
    }
    
    var image: UIImage {
        return UIImage(named: imageName)!
    }
    
    //MARK: - Properties
    
    
    
}
