//
//  ShoppingItemCollectionViewCell.swift
//  Shopping List
//
//  Created by Kevin Stewart on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit



class ShoppingItemCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Properties
    var shoppingItem: ShoppingItem? {
        didSet {
            self.updateViews()
        }
    }
    
    //MARK: - IBOutlets

    @IBOutlet var notAddedButton: UIButton!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var foodNameLabel: UILabel!
    
    //MARK: - Actions

    @IBAction func notAddedButtonTapped(_ sender: UIButton) {
        
    }
    
    
    //MARK: - Functions
    
    func updateViews() {
        guard let shoppingItem = shoppingItem else { return }
    }
}
