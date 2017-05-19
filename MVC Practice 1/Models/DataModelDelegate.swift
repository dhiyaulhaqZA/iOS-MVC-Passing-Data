//
//  DataModelDelegate.swift
//  MVC Pert 7
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 5/19/17.
//  Copyright © 2017 Dhiya Ulhaq Zulha Alamsyah. All rights reserved.
//

import Foundation

protocol DataModelDelegate: class {
    func didReceiveDataUpdate(data: String)
}
