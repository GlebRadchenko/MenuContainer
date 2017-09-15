//
//  Constraints.swift
//  MenuContainer
//
//  Created by GlebRadchenko on 2/8/17.
//  Copyright © 2017 Gleb Radchenko. All rights reserved.
//

import Foundation
import UIKit


public extension NSLayoutConstraint {
    static func constraints(forBinding view: UIView, to parentView: UIView) -> [NSLayoutConstraint] {
        return [leading, trailing, top, bottom].map { return $0(parentView, view, 0.0) }
    }
    
    static func leading(forBinding view: UIView, to parentView: UIView, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.constraint(forBinding: view, to: parentView, attribute: .leading)
    }
    
    static func trailing(forBinding view: UIView, to parentView: UIView, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.constraint(forBinding: view, to: parentView, attribute: .trailing)
    }
    
    static func top(forBinding view: UIView, to parentView: UIView, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.constraint(forBinding: view, to: parentView, attribute: .top)
    }
    
    static func bottom(forBinding view: UIView, to parentView: UIView, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.constraint(forBinding: view, to: parentView, attribute: .bottom)
    }
    
    static func width(for view: UIView, constant: CGFloat) -> NSLayoutConstraint {
        return self.constraint(for: view,
                               attribute: .width,
                               relation: .equal,
                               constant: constant)
    }
    
    static func height(for view: UIView, constant: CGFloat) -> NSLayoutConstraint {
        return self.constraint(for: view,
                               attribute: .height,
                               relation: .equal,
                               constant: constant)
    }
    
    static func constraint(for view: UIView, attribute: NSLayoutAttribute, relation: NSLayoutRelation = .equal, constant: CGFloat, multiplier: CGFloat = 1.0) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view,
                                  attribute: attribute,
                                  relatedBy: relation,
                                  toItem: nil,
                                  attribute: .notAnAttribute,
                                  multiplier: multiplier,
                                  constant: constant)
    }
    
    static func constraint(forBinding view: UIView, to parentView: UIView, attribute: NSLayoutAttribute, relation: NSLayoutRelation = .equal, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view,
                                  attribute: attribute,
                                  relatedBy: relation,
                                  toItem: parentView,
                                  attribute: attribute,
                                  multiplier: multiplier,
                                  constant: constant)
    }
}
