//
//  NotificationDataModel.swift
//  MVC Practice 1
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 5/19/17.
//  Copyright © 2017 Dhiya Ulhaq Zulha Alamsyah. All rights reserved.
//

import Foundation

class NotificationDataModel {
    
    static var sharedInstance = NotificationDataModel()
    var dataModelDidUpdateNotification = "Data"
    
    private init()  {
        
    }
    
    private (set) var data: String? {
        didSet  {
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: dataModelDidUpdateNotification),
                                            object: nil)
        }
    }
    
    func requestData() {
        // the data was received and parsed to String
        self.data = "Data from wherever"
    }
}
