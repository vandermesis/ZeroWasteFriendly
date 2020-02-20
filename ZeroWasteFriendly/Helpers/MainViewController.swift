//
//  MainViewController.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, SpinnerPresentable, AlertPresentable {

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        #if DEBUG
        if isMovingFromParent {
            DispatchQueue.main.async { [weak self] in
                assert(self == nil, """
                                    View: \(String(describing: self)) was popped,
                                    so it should be deallocated, but it wasn't.
                                    Search for memory leaks / reference cycles
                                    """)
            }
        }
        #endif
    }
}
