//
//  DataLoader.swift
//  UPS Load Calculator
//
//  Created by Deepak Reddy on 23/07/20.
//  Copyright © 2020 Deepak Reddy. All rights reserved.
//

import Foundation

public class DataLoader{
    
    @Published var applianceData = [ApplianceData]()
    
    init() {
        load()
//        sort()
    }
    
    func load() {
        if let fileLocation = Bundle.main.url(forResource: "appliances", withExtension: "json"){
            //do catch in case an error
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([ApplianceData].self, from: data) //this create an array of appliance data objects
                self.applianceData = dataFromJson
            } catch  {
                print(error)
            }
        }
    }
    
    func sort() {
//        self.applianceData = self.applianceData.sorted(by: {$0.appliance_category_number < $1.appliance_category_number})
    }
}
