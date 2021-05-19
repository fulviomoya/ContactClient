//
//  Address.swift
//  ContactClients
//
//  Created by Fulvio A. Moya on 19/5/21.
//

import Foundation
import RealmSwift

class Address: Object {
    @objc dynamic var street: String = ""
    @objc dynamic var postalCode = 0
    dynamic var city: City?
    dynamic var country: Country?
    
    convenience init(_ street: String, _ postalCode: Int) {
        self.init()
        self.street = street
        self.postalCode = postalCode
    }
}

class City: Object {
    @objc dynamic var name: String = ""
    dynamic var latitude: Float? = 0.0
    dynamic var longitude: Float32? = 0.0
}

class Country: Object {
    @objc dynamic var name: String = ""
}
