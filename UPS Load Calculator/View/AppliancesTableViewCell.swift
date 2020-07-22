//
//  AppliancesTableViewCell.swift
//  UPS Load Calculator
//
//  Created by Deepak Reddy on 22/07/20.
//  Copyright © 2020 Deepak Reddy. All rights reserved.
//

import UIKit

class AppliancesTableViewCell: UITableViewCell {
    
    var accessorycount = 0
    
    @IBOutlet var applianceNameLabel: UILabel!{
        didSet{
            applianceNameLabel.numberOfLines = 2
        }
    }
    @IBOutlet weak var accessoryWattage: UILabel!
    @IBOutlet weak var accessoryDeleteButton: UIButton!{
        didSet{
            accessoryDeleteButton.layer.borderWidth = 1
            accessoryDeleteButton.layer.borderColor = UIColor.systemBlue.cgColor
            accessoryDeleteButton.layer.cornerRadius = 5
        }
    }
    @IBOutlet weak var accessoryCountLabel: UILabel!{
        didSet{
            accessoryCountLabel.text = "0"
        }
    }
    @IBOutlet weak var accessoryAddButton: UIButton!{
        didSet{
            accessoryAddButton.layer.borderWidth = 1
            accessoryAddButton.layer.borderColor = UIColor.systemBlue.cgColor
            accessoryAddButton.layer.cornerRadius = 5
        }
    }
    
    @IBAction func applianceDeleteAction(_ sender: UIButton) {
        if accessorycount > 0 {
            accessorycount -= 1
            accessoryCountLabel.text = String(accessorycount)
        }else{
           accessoryCountLabel.text = "0"
        }
        
    }
    
    @IBAction func applianceAddAction(_ sender: UIButton) {
        accessorycount += 1
        accessoryCountLabel.text = String(accessorycount)
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
