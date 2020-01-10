//
//  ShoppingCartViewController.swift
//  Shopping List
//
//  Created by Kevin Stewart on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol ShoppingCartDelegate {
    func shouldSendItems()
}


class ShoppingCartViewController: UIViewController, ItemCellProtocol {
    func buttonTapped(_ shoppingItem: ShoppingItem) {
        shoppingItemController?.shoppingItems.append(shoppingItem)
    }
    
    
    var shoppingItemController: ShoppingItemController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addToCart()
    }
    
    
    //MARK: - Properties


    //MARK: - IBOutlets
    @IBOutlet var numberOfItemsInCart: UILabel!
    @IBOutlet var sendOrderButton: UIButton!
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var userAddressTextField: UITextField!
    
    @IBOutlet var amountOfItemsInCart: UILabel!
    //MARK: - Functions

    func addToCart() {
        let selectedItemsArray = shoppingItemController!.shoppingItems.filter { $0.isAdded == true }
        let selectedItemsArrayCount = selectedItemsArray.count
        numberOfItemsInCart.text = "You have \(selectedItemsArrayCount) item(s) in your cart."
    }
    
    //MARK: - IBActions
    @IBAction func sendOrderButtonTapped(_ sender: UIButton) {
       guard let name = userNameTextField.text,
         let address = userAddressTextField.text,
        !name.isEmpty,
        !address.isEmpty else { return }
        
//        navigationController?.popToRootViewController(animated: true)
        
        showAlert()
    
        
        
    }
    
    private func showAlert() {
        let userAddress = userAddressTextField.text!
        let userName = userNameTextField.text!
        
        let alert = UIAlertController(title: "Thanks for your order \(userName)!", message: "Your order will be sent to \(userAddress) in fifteen minutes.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        
        
    }

}

