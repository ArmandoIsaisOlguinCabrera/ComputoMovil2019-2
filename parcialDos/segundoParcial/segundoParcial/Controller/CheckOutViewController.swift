//
//  Pregunta.swift
//  segundoParcial
//
//  Created by Armando Isais Olguin Cabrera on 4/29/19.
//  Copyright © 2019 Armando Isais Olguin Cabrera. All rights reserved.
//

import UIKit

class CheckOutViewController: UIViewController {

    @IBOutlet weak var TotalBillLable: UILabel!
    @IBOutlet weak var StandardShippingButton: UIButton!
    @IBOutlet weak var ExpressShippingButton: UIButton!
    
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    var shoppingCart: ShoppingCart!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Check Out"
        StandardShippingButton.isEnabled = false //default is shown as standard shipping selected.
        self.updateUI()
    }
    
    func updateUI(){
        
        TotalBillLable.text = "\(shoppingCart.getTotal())"
    }
    
    
    func Indicator()
    {

        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = UIActivityIndicatorView.Style.gray
        view.addSubview(self.activityIndicator)
        activityIndicator.startAnimating()
        //UIApplication.shared.beginIgnoringInteractionEvents()
        
    }
    
    @IBAction func standardShippingSelected(_ sender: Any) {
        shoppingCart.shippingType = .Standard
        StandardShippingButton.isEnabled = false
        ExpressShippingButton.isEnabled = true
        
        self.updateUI()
    }
    
    @IBAction func expressShippingSelected(_ sender: Any) {
        shoppingCart.shippingType = .express
        StandardShippingButton.isEnabled = true
        ExpressShippingButton.isEnabled = false
        
        self.updateUI()
    }
    
    
    @IBAction func placeOrderDidTap(_ sender: AnyObject)
    {
        let alertController = UIAlertController(title: "Confirm Order", message: "Please confirm that you want to make a payment of \(shoppingCart.getTotal())!", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            
        }
        let confirmAction = UIAlertAction(title: "Confirm", style: .default) { (action) in
            
            self.Indicator()
        
            
            
            let successActionSheet = UIAlertController(title: "Thank you!", message: "Your payment of \(self.shoppingCart.getTotal()) was processed successfully! Please check your email for your order receipt email and shipping information.", preferredStyle: .actionSheet)
            self.present(successActionSheet, animated: true, completion: nil)
            
            let continueShoppingAction = UIAlertAction(title: "Let's Shop More!", style: UIAlertAction.Style.default){ (action)
                in
                self.shoppingCart.reset()
                self.navigationController?.popToRootViewController(animated: true)
                self.dismiss(animated: true, completion: nil)
                
                
            }
            
            successActionSheet.addAction(continueShoppingAction)
            self.shoppingCart.reset()
        
        
        
        }
        
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
        
 
    
    }
    
}

