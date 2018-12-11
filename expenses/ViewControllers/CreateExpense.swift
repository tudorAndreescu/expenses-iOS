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
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet weak var valueTextField: UITextField!
    @IBOutlet weak var fixedSwitch: UISwitch!
    @IBOutlet weak var frequencyTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        
    }
    
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        let myExpense = Expense()
        myExpense.name = nameTextField.text
        myExpense.value = Float(valueTextField.text!) ?? 0.0
        if fixedSwitch.isOn {
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
    }
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "unwindToStartScreenFromExpenses", sender: self)
    }
    
    //For the eventuality of needing this function later on
//    func setExpenseData() {
//
//     }
    
    fileprivate func setupNavigationBar() {
        self.navigationItem.title = "Create an expense"
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.isNavigationBarHidden = false
    }
    
}
