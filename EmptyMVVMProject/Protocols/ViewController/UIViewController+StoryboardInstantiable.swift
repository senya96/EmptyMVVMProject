//
//  UIViewController+StoryboardInstantiable.swift
//  EmptyMVVMProject
//
//  Created by Sergiy Nasinnyk on 25.11.2022.
//

import UIKit

/// Protocol to male loading controller UI from Storyboard easier.
protocol StoryboardInstantiable: AnyObject {
    static var storyboardName: String { get }
}

//MARK: - UIViewController

extension StoryboardInstantiable where Self: UIViewController {
    
    static func storyboardInstance() -> Self? {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: String(describing: Self.self)) as? Self
    }
}
