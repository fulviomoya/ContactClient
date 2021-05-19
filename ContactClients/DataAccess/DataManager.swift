//
//  DataManager.swift
//  ContactClients
//
//  Created by Fulvio A. Moya on 19/5/21.
//

import Foundation

protocol DataManager {
    func create<T: Storable>(_ model: T.Type, completion: @escaping ((T) -> Void)) throws
    func save(object: Storable) throws
    func update(object: Storable) throws
    func delete(object: Storable) throws
    func deleteAll<T: Storable>(_ model: T.Type) throws
   // func fetch<T: Storable>(_ model: T.Type, predicate: NSPredicate?, sorted: Sorted?, completion: (([T]) -> ()))
}

public protocol Storable {
 
}
