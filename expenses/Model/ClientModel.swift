//
//  ClientModel.swift
//  expenses
//
//  Created by Danut Pralea on 11/12/2018.
//  Copyright © 2018 TudorAndreescu. All rights reserved.
//

import Foundation

struct ClientModel {
    var firstName: String?
    var lastName: String?
    var position: String?
    
    init(firstName: String, lastName: String, position: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.position = position 
    }
}
