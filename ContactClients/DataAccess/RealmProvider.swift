//
//  RealmProvider.swift
//  ContactClients
//
//  Created by Fulvio A. Moya on 19/5/21.
//

import RealmSwift

struct RealmProvider {
    let configuration: Realm.Configuration
    
    internal init(config: Realm.Configuration) {
        configuration = config
    }
    
    private var realm: Realm? {
        do {
           return try Realm(configuration:  configuration)
        } catch {
            //TODO: Add a log
            return nil
        }
    }
}
