//
//  ShoppingItemCollectionViewCell.swift
//  Shopping List
//
//  Created by Kevin Stewart on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol ItemCellProtocol {
    func buttonTapped(_ shoppingItem: ShoppingItem)
}


class ShoppingItemCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Properties
    var shoppingItem: ShoppingItem? {
        didSet {
            self.updateViews()
        }
    }
    var delegate: ItemCellProtocol?
    //MARK: - IBOutlets

    @IBOutlet var notAddedButton: UIButton!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var foodNameLabel: UILabel!
    
    //MARK: - Actions

    @IBAction func notAddedButtonTapped(_ sender: UIButton) {
        
            shoppingItem?.isAdded.toggle()
            if shoppingItem?.isAdded == false {
                notAddedButton.setTitle("Not Added", for: .normal)
            } else {
                notAddedButton.setTitle("Added", for: .normal)
                
            }

        delegate?.buttonTapped(shoppingItem!)
        
    }
    
    
    //MARK: - Functions
    
    func updateViews() {
    }
}
