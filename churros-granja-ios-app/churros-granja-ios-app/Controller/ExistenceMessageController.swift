//
//  ExistenceMessageController.swift
//  churros-granja-ios-app
//
//  Created by Ricardo Granja on 02/06/20.
//  Copyright © 2020 Ricardo Granja. All rights reserved.
//

import UIKit

class ExistenceMessageController: UIView {
    
    static let instance = ExistenceMessageController()
    @IBOutlet var parentView: UIView!
    @IBOutlet weak var alertView: UIView!
    @IBOutlet weak var productQuantityField: UITextField!
    static let nameView: String = "ExistenceMessageView"
    @IBOutlet weak var unitProductLabel: UILabel!
    
    override init(frame: CGRect) { //For use in custom code
        super.init(frame: frame)
        Bundle.main.loadNibNamed(ExistenceMessageController.nameView, owner: self, options: nil)
        commonInit()
    }
    
    required init?(coder: NSCoder) { //For use in custom XIB
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        alertView.layer.cornerRadius = 7.0
        parentView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        parentView.autoresizingMask = [.flexibleWidth, .flexibleWidth]
        productQuantityField.text = "0"
        productQuantityField.textAlignment = .center
    }
    
    func showAlert(unitProduct: String) {
        UIApplication.shared.keyWindow?.addSubview(parentView)
        unitProductLabel.text = unitProduct
    }
    
    @IBAction func changeQuantityProduct(_ sender: UIStepper) {
        productQuantityField.text = String(Int(sender.value))
    }
    
    @IBAction func onClickAdd(_ sender: Any) {
        parentView.removeFromSuperview()
    }
    
    @IBAction func onClickCancel(_ sender: Any) {
        parentView.removeFromSuperview()
    }
}
