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


class ShoppingCartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: - Properties
    var delegate: ShoppingCartDelegate?
    
    //MARK: - IBOutlets
    @IBOutlet var numberOfItemsInCart: UILabel!
    @IBOutlet var sendOrderButton: UIButton!
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var userAddressTextField: UITextField!
    
    //MARK: - IBActions
    @IBAction func sendOrderButtonTapped(_ sender: UIButton) {
       guard let name = userNameTextField.text,
         let address = userAddressTextField.text,
        !name.isEmpty,
        !address.isEmpty else { return }
        
        
    }
    
    private func showAlert() {
        let alert = UIAlertController(title: "Thanks for your order \(String(describing: userNameTextField))!", message: "Your order will be sent to \(String(describing: userAddressTextField)) in fifteen minutes.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
