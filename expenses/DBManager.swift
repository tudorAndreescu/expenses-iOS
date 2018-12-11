//
//  DBManager.swift
//  expenses
//
//  Created by Danut Pralea on 11/12/2018.
//  Copyright © 2018 TudorAndreescu. All rights reserved.
//

import UIKit

import RealmSwift

class DBManager {
    
    private var   database:Realm
    
    static let   sharedInstance = DBManager()
    
    private init() {
        
        database = try! Realm()
        
    }
    
    func getDataFromDB() ->   Results<Item> {
        
        let results: Results<Route> =   database.objects(Item.self)
        
        return results
        
    }
    
    func addData(object: Item)   {
        
        try! database.write {
            
            database.add(object, update: true)
            
            print("Added new object")
            
        }
        
    }
    
    func deleteAllFromDatabase()  {
        
        try!   database.write {
            
            database.deleteAll()
            
        }
        
    }
    
    func deleteFromDb(object: Item)   {
        
        try!   database.write {
            
            database.delete(object)
            
        }
        
    }
    
}
