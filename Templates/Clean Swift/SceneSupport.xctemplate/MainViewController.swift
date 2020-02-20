//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
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
