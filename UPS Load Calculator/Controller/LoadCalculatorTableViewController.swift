//
//  LoadCalculatorTableViewController.swift
//  UPS Load Calculator
//
//  Created by Deepak Reddy on 22/07/20.
//  Copyright © 2020 Deepak Reddy. All rights reserved.
//

import UIKit

class LoadCalculatorTableViewController: UITableViewController {

    var appliance: [Appliance] = [Appliance(category: "Fans and Coolers", name: ["Ceiling Fan", "Cooler", "Table Fan"], wattage: [75, 250, 50]),
    Appliance(category: "Computers and Laptops", name: ["Laptop", "Desktop Computer", "Small Printer"], wattage: [100, 200, 200])]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return appliance.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return appliance[section].name.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "accessoryDataCell", for: indexPath) as! AppliancesTableViewCell
            cell.applianceNameLabel.text = appliance[indexPath.section].name[indexPath.row]
            cell.accessoryWattage.text = String(appliance[indexPath.section].wattage[indexPath.row])
            return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return appliance[section].category
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "accessoryCategoryCell") as! SectionHeadingTableViewCell
        cell.applianceCategoryHeadinglabel.text = appliance[section].category
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 42
    }
    
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
