//
//  Appliance.swift
//  UPS Load Calculator
//
//  Created by Deepak Reddy on 22/07/20.
//  Copyright © 2020 Deepak Reddy. All rights reserved.
//

import Foundation

class Appliance{
    var category: String
    var name: [String]
    var wattage: [Int]
    
    init(category: String, name: [String], wattage: [Int]) {
        self.category = category
        self.name = name
        self.wattage = wattage
    }
    
    convenience init() {
        self.init(category: "", name: [], wattage: [])
    }
}
