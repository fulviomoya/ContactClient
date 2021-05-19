//
//  UIView+Extensions.swift
//  ContactClients
//
//  Created by Fulvio A. Moya on 19/5/21.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
