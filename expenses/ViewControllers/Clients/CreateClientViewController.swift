//
//  CreateClient.swift
//  expenses
//
//  Created by Danut Pralea on 10/12/2018.
//  Copyright © 2018 TudorAndreescu. All rights reserved.
//

import UIKit
import RealmSwift

class CreateClientViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var positionTextField: UITextField!
    @IBOutlet weak var saveClientButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        
        
    }
    @IBAction func saveButtonPressed(_ sender: Any) {
        let myClient = Client()
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
    }

    //For the eventuality of needing this function later on
//    func setClientData() {
//        myClient.firstName = firstNameTextField.text
//        myClient.lastName = lastNameTextField.text
//        myClient.position = positionTextField.text
//    }
    
    fileprivate func setupNavigationBar() {
        self.navigationItem.title = "Create a client"
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.isNavigationBarHidden = false
    }
    
}
