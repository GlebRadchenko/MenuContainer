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
