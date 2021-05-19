//
//  BaseRepository.swift
//  ContactClients
//
//  Created by Fulvio A. Moya on 19/5/21.
//

import Foundation

class BaseRepository<T> {
    var dbManager: DataManager
    
    required init(dbManager: DataManager) {
        self.dbManager = dbManager
    }
    
    //MARK: - Methods
    func delete(object: Storable) throws {
        try dbManager.delete(object: object)
    }
    
    func deleteAll(_ model: T.Type) throws where T: Storable {
        try dbManager.deleteAll(model)
    }
    
    func save(object: Storable) throws {
        try dbManager.save(object: object)
    }
    
    func create<T>(_ model: T.Type, completion: @escaping((T) -> Void)) throws where T: Storable {
        try dbManager.create(model, completion: completion)
    }
}
