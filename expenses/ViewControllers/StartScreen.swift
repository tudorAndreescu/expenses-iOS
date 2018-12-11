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
        let realm = try! Realm()
        let clients = realm.objects(Client.self)
        print(clients)
        setupNavigationBar()
        
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
    
    fileprivate func setupNavigationBar() {
        let navblue = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        self.navigationController?.navigationBar.tintColor = navblue
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.isNavigationBarHidden = false
    }
}

