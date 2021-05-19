//
//  Client.swift
//  ContactClients
//
//  Created by Fulvio A. Moya on 19/5/21.
//

import Foundation

struct ClientDTO: RealmMappableProtocol {
    let name: String
    let address: [AddressDTO]!
    
    func mapToPersistenceObjecT() -> Storable? {
        return nil
    }
    
    static func mapFromPersistenceObject(_ object: Storable) -> ClientDTO? {
        return nil
    }
}
