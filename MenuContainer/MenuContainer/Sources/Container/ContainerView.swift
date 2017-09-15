//
//  ContainerView.swift
//  MenuContainer
//
//  Created by GlebRadchenko on 2/8/17.
//  Copyright © 2017 Gleb Radchenko. All rights reserved.
//

import UIKit

class ContainerView: UIView {
    var viewController: UIViewController!
    var filled: Bool {
        return viewController != nil
    }
    
    var active: Bool {
        set { newValue ? show() : hide() }
        get { return !isHidden }
    }
    
    func embed(_ vc: UIViewController) {
        if viewController != nil {
            clear()
        }
        viewController = vc
        vc.view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(vc.view)
        
        bind(vc.view)
    }
    
    func clear() {
        subviews.forEach { $0.removeFromSuperview() }
        viewController?.removeFromParentViewController()
        viewController?.didMove(toParentViewController: nil)
        viewController = nil
    }
    
    func show() {
        isHidden = false
    }
    
    func hide() {
        isHidden = true
    }
}
