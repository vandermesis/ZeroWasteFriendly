//
//  SpinnerPresentable.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

protocol SpinnerPresentable: UIViewController {
    func toogleSpinner(_ state: Bool)
}

extension SpinnerPresentable {

    func toogleSpinner(_ state: Bool) {
        if state {
            guard navigationController?.presentedViewController == nil else { return }
            let spinner = SpinnerController()
            navigationController?.present(spinner, animated: false, completion: nil)
        } else {
            guard let spinner = navigationController?.presentedViewController as? SpinnerController else { return }
            spinner.dismiss(animated: false, completion: nil)
        }
    }
}
