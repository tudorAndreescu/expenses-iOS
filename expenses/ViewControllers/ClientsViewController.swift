//
//  ClientsViewController.swift
//  expenses
//
//  Created by Danut Pralea on 11/12/2018.
//  Copyright © 2018 TudorAndreescu. All rights reserved.
//

import UIKit
import RealmSwift

class ClientsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // Declarations
    var FirstNames = [String]()
    var LastNames = [String]()
    
    // Outlets
    @IBOutlet weak var clientsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        clientsTableView.delegate = self
        clientsTableView.dataSource = self
        queryClients()
    }

    fileprivate func setupNavigationBar() {
        self.navigationItem.title = "Clients"
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.isNavigationBarHidden = false
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FirstNames.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell: ClientTableViewCell = tableView.dequeueReusableCell(withIdentifier: "clientsCell", for: indexPath) as? ClientTableViewCell {
            cell.nameLabel.text = "\(FirstNames[indexPath.row]) \(LastNames[indexPath.row])"
            return cell
        } else {
            return ClientTableViewCell()
        }
    }
    
    func queryClients() {
        do {
            let realm = try Realm()
            let clients = realm.objects(Client.self)
            var byName = clients.sorted(byKeyPath: "firstName")
            for client in byName {
                FirstNames.append(client.firstName ?? "")
                LastNames.append(client.lastName ?? "")
                print("\(client.firstName) \(client.lastName)")
                self.clientsTableView.reloadData()
            }
        } catch let error {
            print("error initializing realm : \(error.localizedDescription)")
        }
    }
    
}
