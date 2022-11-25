//
//  MainViewController.swift
//  EmptyMVVMProject
//
//  Created by Sergiy Nasinnyk on 25.11.2022.
//

import UIKit

class MainViewController: UIViewController {
    var viewModel: MainViewModel?
    
    func s() {
        
    }
}

extension MainViewController: StoryboardInstantiable {
    static var storyboardName: String {
        Storyboard.main.rawValue
    }
}
