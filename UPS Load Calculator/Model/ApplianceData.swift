//
//  ApplianceData.swift
//  UPS Load Calculator
//
//  Created by Deepak Reddy on 23/07/20.
//  Copyright © 2020 Deepak Reddy. All rights reserved.
//

import Foundation

struct ApplianceData: Codable {
    
    var appliance_category: String
    var appliance_name: [String]
    var appliance_wattage: [Int]
}
