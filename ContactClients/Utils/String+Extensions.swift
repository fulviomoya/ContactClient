//
//  String+Extensions.swift
//  ContactClients
//
//  Created by Fulvio A. Moya on 19/5/21.
//

import Foundation

extension String {
    static let empty = ""
    
    static func getLocalizable(_ from: AnyClass, for key: String) -> String {
        NSLocalizedString("\(String(describing: from)).\(key)", comment: String.empty)
    }
    
    static func getLocalizable(_ key: String) -> String {
        NSLocalizedString(key, comment: String.empty)
    }
}
