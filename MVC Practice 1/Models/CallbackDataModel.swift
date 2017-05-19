//
//  CallbackDataModel.swift
//  MVC Practice 1
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 5/19/17.
//  Copyright © 2017 Dhiya Ulhaq Zulha Alamsyah. All rights reserved.
//

import Foundation

class CallbackDataModel {
    
    func requestData(completion: ((_ data: String) -> Void)) {
        // the data was received and parsed to String
        let data = "Data from wherever"
        completion(data)
    }
}
