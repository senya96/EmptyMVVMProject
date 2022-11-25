//
//  Coordinator+setup.swift
//  EmptyMVVMProject
//
//  Created by Sergiy Nasinnyk on 25.11.2022.
//

import Foundation

protocol CoordinatorSetupable  where Self: Coordinator {
    func setupRoot()
}
