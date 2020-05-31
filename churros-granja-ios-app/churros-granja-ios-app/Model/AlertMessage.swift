//
//  AlertMessage.swift
//  Churros Granja
//
//  Created by Ricardo Granja on 20/03/20.
//  Copyright © 2020 Ricardo Granja. All rights reserved.
//

import Foundation
import UIKit

class AlertMessage {
    
    static func showOK(title: String, message: String) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        return alert
    }
}
