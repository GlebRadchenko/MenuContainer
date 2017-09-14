//
//  ContainerSegue.swift
//  MenuContainer
//
//  Created by GlebRadchenko on 2/9/17.
//  Copyright © 2017 Gleb Radchenko. All rights reserved.
//

import UIKit

public enum ContainerSegueIdentifier: String {
    case left = "LeftContainerSegue"
    case right = "RightContainerSegue"
    case central = "CentralContainerSegue"
}

public class ContainerSegue: UIStoryboardSegue {
    var panel: ContainerPanel = .central
    
    public override func perform() {
        guard let container = source as? ContainerViewController else {
            fatalError("Source View Controller must be ContainerViewController type")
        }
        container.set(destination, to: panel)
    }
}

@objc(CentralContainerSegue)
public class CentralContainerSegue: ContainerSegue {
    override init(identifier: String?, source: UIViewController, destination: UIViewController) {
        super.init(identifier: identifier, source: source, destination: destination)
        panel = .central
    }
}

@objc(LeftContainerSegue)
public class LeftContainerSegue: ContainerSegue {
    override init(identifier: String?, source: UIViewController, destination: UIViewController) {
        super.init(identifier: identifier, source: source, destination: destination)
        panel = .left
    }
}

@objc(RightContainerSegue)
public class RightContainerSegue: ContainerSegue {
    override init(identifier: String?, source: UIViewController, destination: UIViewController) {
        super.init(identifier: identifier, source: source, destination: destination)
        panel = .right
    }
}
