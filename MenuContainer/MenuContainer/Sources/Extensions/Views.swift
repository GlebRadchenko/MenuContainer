//
//  Views.swift
//  MenuContainer
//
//  Created by Gleb on 9/14/17.
//  Copyright © 2017 Gleb Radchenko. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func bind(_ view: UIView) {
        if !subviews.contains(view) {
            addSubview(view)
        }
        
        [view.leadingAnchor.constraint(equalTo: leadingAnchor),
         view.trailingAnchor.constraint(equalTo: trailingAnchor),
         view.topAnchor.constraint(equalTo: topAnchor),
         view.bottomAnchor.constraint(equalTo: bottomAnchor)].forEach { $0.isActive = true }
    }
}

extension UIView {
    var leading: NSLayoutConstraint? {
        guard let superview = superview else { return nil }
        for constraint in superview.constraints {
            if constraint.firstAttribute == .leading && constraint.secondAttribute == .leading {
                if let aView = constraint.firstItem as? UIView {
                    if aView == self {
                        return constraint
                    }
                }
                
                if let aView = constraint.secondItem as? UIView {
                    if aView == self {
                        return constraint
                    }
                }
            }
        }
        return nil
    }
    
    var trailing: NSLayoutConstraint? {
        guard let superview = superview else { return nil }
        for constraint in superview.constraints {
            if constraint.firstAttribute == .trailing && constraint.secondAttribute == .trailing {
                if let aView = constraint.firstItem as? UIView {
                    if aView == self {
                        return constraint
                    }
                }
                
                if let aView = constraint.secondItem as? UIView {
                    if aView == self {
                        return constraint
                    }
                }
            }
        }
        return nil
    }
}
