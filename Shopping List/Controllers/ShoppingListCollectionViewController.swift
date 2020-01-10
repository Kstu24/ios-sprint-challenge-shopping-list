//
//  ShoppingListCollectionViewController.swift
//  Shopping List
//
//  Created by Kevin Stewart on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

//make this view controller the delegator as opposed to the collection view cell

import UIKit

private let reuseIdentifier = "Cell"

class ShoppingListCollectionViewController: UICollectionViewController, ItemCellProtocol {
    func buttonTapped(_ shoppingItem: ShoppingItem) {
        shoppingItemController.shoppingItems.append(shoppingItem)
    }
    

    

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }
    //MARK: - Properties
    var shoppingItemController = ShoppingItemController()
    
    
    //MARK: - Functions
    
    /*
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource
//
//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return shoppingItemController.shoppingItems.count
    }

    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "shoppingItemCell", for: indexPath) as? ShoppingItemCollectionViewCell else { return UICollectionViewCell()}
        
        let shoppingItem = shoppingItemController.shoppingItems[indexPath.item]
        
        cell.shoppingItem = shoppingItem
        
        let imageName = shoppingItem.imageName
        let cellImage = UIImage(named: imageName)
        cell.imageView.image = cellImage
        cell.foodNameLabel.text = shoppingItem.name
        
        cell.delegate = self
    
        return cell
    }
    
    
    
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "shoppingCartSegue" {
           guard let shoppingCartVC = segue.destination as? ShoppingCartViewController else { return }
            
            shoppingCartVC.shoppingItemController = shoppingItemController
           }
     
        }

}


