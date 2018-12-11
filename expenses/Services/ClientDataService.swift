//
//  ClientDataService.swift
//  expenses
//
//  Created by Danut Pralea on 11/12/2018.
//  Copyright © 2018 TudorAndreescu. All rights reserved.
//

import Foundation
import RealmSwift

class ClientDataService {
    static let instance = ClientDataService()
    
    var clientul = [ClientModel.self]
    
}

func queryClients() {
    do {
        let realm = try Realm()
        let clients = realm.objects(Client.self)
        for client in clients {
            
            client.append(client.lastName ?? "")
            print("\(client.firstName) \(client.lastName)")
            self.clientsTableView.reloadData()
        }
    } catch let error {
        print("error initializing realm : \(error.localizedDescription)")
    }
}
