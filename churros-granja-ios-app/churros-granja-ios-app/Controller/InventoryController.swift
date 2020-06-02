//
//  InventoryController.swift
//  Churros Granja
//
//  Created by Ricardo Granja on 21/03/20.
//  Copyright © 2020 Ricardo Granja. All rights reserved.
//

import UIKit

class InventoryController: UIViewController {

    @IBOutlet weak var tableInventory: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableInventory.register(UINib.init(nibName: ProductInventoryCell.nameCell, bundle: nil), forCellReuseIdentifier: ProductInventoryCell.nameCell)
        tableInventory.rowHeight = UITableView.automaticDimension
        tableInventory.tableFooterView = UIView()
    }
}

extension InventoryController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableInventory.dequeueReusableCell(withIdentifier: ProductInventoryCell.nameCell, for: indexPath) as! ProductInventoryCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: Segues.toProductInventory.rawValue, sender: self)
    }
}
