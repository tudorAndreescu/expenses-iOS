//
//  Client.swift
//  expenses
//
//  Created by Danut Pralea on 10/12/2018.
//  Copyright © 2018 TudorAndreescu. All rights reserved.
//

import Foundation
import RealmSwift

class Client: Object {
    
    @objc dynamic var firstName: String?
    @objc dynamic var lastName: String?
    @objc dynamic var position: String?
    
}


