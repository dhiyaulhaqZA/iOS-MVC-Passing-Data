//
//  DataModel.swift
//  MVC Pert 7
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 5/19/17.
//  Copyright © 2017 Dhiya Ulhaq Zulha Alamsyah. All rights reserved.
//

import Foundation

class DataModel {
    weak var delegate: DataModelDelegate?
    
    func requestData() {
        // the data was received and parsed to String
        let data = "Test"
        delegate?.didReceiveDataUpdate(data: data)
    }
}
