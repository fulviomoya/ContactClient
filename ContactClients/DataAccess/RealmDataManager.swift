//
//  RealmDataManager.swift
//  ContactClients
//
//  Created by Fulvio A. Moya on 19/5/21.
//

import RealmSwift

class RealmDataManager {
    private let realm: Realm?
    
    init (_ realm: Realm?) {
        self.realm = realm
    }
}

// MARK: - DataManagerProtocol
extension RealmDataManager: DataManager {
    func create<T>(_ model: T.Type, completion: @escaping ((T) -> Void)) throws where T : Storable {
        //TODO:
    }
    
    func save(object: Storable) throws {
        //TODO:
    }
    
    func update(object: Storable) throws {
        //TODO:
    }
    
    func delete(object: Storable) throws {
        //TODO:
    }
    
    func deleteAll<T>(_ model: T.Type) throws where T : Storable {
        //TODO:
    }
}
