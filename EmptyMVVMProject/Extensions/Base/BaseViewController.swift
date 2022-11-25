//
//  BaseViewController.swift
//  EmptyMVVMProject
//
//  Created by Sergiy Nasinnyk on 25.11.2022.
//

import UIKit

class BaseViewController: UIViewController {
    
    var onNavigateBack: (() -> ())?
    var onWillStartPresenting: (() -> ())?
    var onDidStartPresenting: (() -> ())?
    var onFinishPresenting: (()->())?
    var onDidLoad: (()->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onDidLoad?()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        onWillStartPresenting?()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        onDidStartPresenting?()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        onFinishPresenting?()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @IBAction internal func onNavigateBackDidTap(_ sender: AnyObject?) {
        onNavigateBack?()
    }
}

