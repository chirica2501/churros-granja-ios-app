//
//  Keyboard.swift
//  churros-granja-ios-app
//
//  Created by Ricardo Granja on 29/05/20.
//  Copyright © 2020 Ricardo Granja. All rights reserved.
//

import Foundation
import UIKit

class Keyboard {
    @objc func keyboardWillShow(view: UIView, notification: NSNotification) {
        let keyboardRect = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as AnyObject).cgRectValue
        
        if view.frame.origin.y == 0 {
            view.frame.origin.y -= keyboardRect?.height ?? 0
        }
    }

    @objc func keyboardWillHide(view: UIView) {
        if view.frame.origin.y != 0 {
            view.frame.origin.y = 0
        }
    }
}
