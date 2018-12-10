//
//  CreateExpense.swift
//  expenses
//
//  Created by Danut Pralea on 10/12/2018.
//  Copyright © 2018 TudorAndreescu. All rights reserved.
//

import UIKit
import RealmSwift

class CreateExpense: UIViewController {
    
    let myExpense = Expense()
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet weak var valueTextField: UITextField!
    @IBOutlet weak var fixedTextField: UITextField!
    @IBOutlet weak var frequencyTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        myExpense.name = nameTextField.text
        myExpense.value = Float(valueTextField.text!) ?? 0.0
        if fixedTextField.text == "Yes" {
            myExpense.fixed = true
        } else {
            myExpense.fixed = false
        }
        do {
            let realm = try Realm()
            print(Realm.Configuration.defaultConfiguration.fileURL!)
            do {
                try realm.write {
                    //setExpenseData()
                    realm.add(myExpense)
                }
            } catch let addError {
                print("error adding Client object : \(addError.localizedDescription)")
            }
        } catch let error {
            print("error initializing realm : \(error.localizedDescription)")
        }
        print(myExpense)
        self.performSegue(withIdentifier: "unwindToStartScreenFromExpenses", sender: self)
    }
    
    
    //For the eventuality of needing this function later on
//    func setExpenseData() {
//
//     }
    
    
}
