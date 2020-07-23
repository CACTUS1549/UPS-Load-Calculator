//
//  LoadCalculatorTableViewController.swift
//  UPS Load Calculator
//
//  Created by Deepak Reddy on 22/07/20.
//  Copyright © 2020 Deepak Reddy. All rights reserved.
//

import UIKit

class LoadCalculatorTableViewController: UITableViewController {
    
    let data = DataLoader().applianceData

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].appliance_name.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "accessoryDataCell", for: indexPath) as! AppliancesTableViewCell
        cell.applianceNameLabel.text = data[indexPath.section].appliance_name[indexPath.row]
        cell.accessoryWattage.text = String(data[indexPath.section].appliance_wattage[indexPath.row])
            return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data[section].appliance_category
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "accessoryCategoryCell") as! SectionHeadingTableViewCell
        cell.applianceCategoryHeadinglabel.text = data[section].appliance_category
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 42
    }
    
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
