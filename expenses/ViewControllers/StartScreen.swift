//
//  ViewController.swift
//  expenses
//
//  Created by Danut Pralea on 10/12/2018.
//  Copyright © 2018 TudorAndreescu. All rights reserved.
//

import UIKit
import RealmSwift

class StartScreen: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let realm = try! Realm()
//        print(Realm.Configuration.defaultConfiguration.fileURL!)
//
//        let myClient = Client()
//        myClient.firstName = "Tudor"
//        myClient.lastName = "Andreescu"
//        myClient.position = "Junior"
//
//        let myExpense = Expense()
//        myExpense.name = "electrica"
//        myExpense.fixed = false
//        myExpense.value = 67.03
//        myExpense.percentage = 0
//
//        try! realm.write {
//            realm.add(myClient)
//            realm.add(myExpense)
//        }
    
    }
    
    @IBAction func unwindToContainerVC(segue: UIStoryboardSegue) {
        
    }
    
}

