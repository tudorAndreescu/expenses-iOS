//
//  CreateClient.swift
//  expenses
//
//  Created by Danut Pralea on 10/12/2018.
//  Copyright © 2018 TudorAndreescu. All rights reserved.
//

import UIKit
import RealmSwift

class CreateClient: UIViewController {
    
    let myClient = Client()
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var positionTextField: UITextField!
    @IBOutlet weak var saveClientButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    @IBAction func saveButtonPressed(_ sender: Any) {
        myClient.firstName = firstNameTextField.text
        myClient.lastName = lastNameTextField.text
        myClient.position = positionTextField.text
        do {
            let realm = try Realm()
            print(Realm.Configuration.defaultConfiguration.fileURL!)
            do {
                try realm.write {
                    //setClientData()
                    realm.add(myClient)
                }
            } catch let addError {
                print("error adding Client object : \(addError.localizedDescription)")
            }
        } catch let error {
            print("error initializing realm : \(error.localizedDescription)")
        }
        print(myClient)
        self.performSegue(withIdentifier: "unwindToStartScreenFromClient", sender: self)
    }

    //For the eventuality of needing this function later on
//    func setClientData() {
//        myClient.firstName = firstNameTextField.text
//        myClient.lastName = lastNameTextField.text
//        myClient.position = positionTextField.text
//    }
    
}
