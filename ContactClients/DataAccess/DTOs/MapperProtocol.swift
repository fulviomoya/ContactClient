//
//  MapperProtocol.swift
//  ContactClients
//
//  Created by Fulvio A. Moya on 19/5/21.
//

import Foundation

protocol RealmMappableProtocol {
    func mapToPersistenceObjecT() -> Storable?
    static func mapFromPersistenceObject(_ object: Storable) -> Self?
}
