//
//  ViewController.swift
//  Churros Granja
//
//  Created by Ricardo Granja on 21/03/20.
//  Copyright © 2020 Ricardo Granja. All rights reserved.
//

import UIKit

class ProductController: UIViewController {

    @IBOutlet weak var imageProduct: UIImageView!
    @IBOutlet weak var tableDetails: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableDetails.estimatedRowHeight = 100
        tableDetails.rowHeight = UITableView.automaticDimension
        tableDetails.tableFooterView = UIView()
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}

extension ProductController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        
        switch indexPath.row {
            case 0:
                cell = tableDetails.dequeueReusableCell(withIdentifier: "nameProductCell") ?? UITableViewCell()
            case 1:
                cell = tableDetails.dequeueReusableCell(withIdentifier: "existenceProductCell") ?? UITableViewCell()
            case 2:
                cell = tableDetails.dequeueReusableCell(withIdentifier: "lastDateProductCell") ?? UITableViewCell()
            case 3:
                cell = tableDetails.dequeueReusableCell(withIdentifier: "detailProductCell") ?? UITableViewCell()
            case 4:
                cell = tableDetails.dequeueReusableCell(withIdentifier: "addProductCell") ?? UITableViewCell()
        default:
            break
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if indexPath.row == 4 {
            ExistenceMessageController.instance.showAlert(unitProduct: "KG")
        }
    }
    
}
