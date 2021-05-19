//
//  Address.swift
//  ContactClients
//
//  Created by Fulvio A. Moya on 19/5/21.
//

import Foundation

struct AddressDTO: RealmMappableProtocol {
    let street: String
    let postalCode: Int16?
    let city: CityDTO?
    let country: CountryDTO
    
    func mapToPersistenceObjecT() -> Storable? {
        //
        return nil
    }
    
    static func mapFromPersistenceObject(_ object: Storable) -> AddressDTO? {
        // Fix
        return nil
    }
    
}

struct CityDTO: RealmMappableProtocol {
    let name: String
    let latitud: Float32?
    let longitude: Float32?
    
    func mapToPersistenceObjecT() -> Storable? {
        //
        return nil
    }
    
    static func mapFromPersistenceObject(_ object: Storable) -> CityDTO? {
        //
        return nil
    }
}

struct CountryDTO: RealmMappableProtocol {
    let name: String
    
    func mapToPersistenceObjecT() -> Storable? {
        //
        return nil
    }
    
    static func mapFromPersistenceObject(_ object: Storable) -> CountryDTO? {
        //
        return nil
    }
}
