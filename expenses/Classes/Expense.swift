//
//  Expense.swift
//  expenses
//
//  Created by Danut Pralea on 10/12/2018.
//  Copyright © 2018 TudorAndreescu. All rights reserved.
//

import Foundation
import RealmSwift

class Expense: Object {
    
    @objc dynamic var name: String? = nil
    @objc dynamic var percentage: Int = 0
    @objc dynamic var value: Float = 0.0
    @objc dynamic var fixed: Bool = false
    @objc dynamic var frequency: NSDate? = nil
}
