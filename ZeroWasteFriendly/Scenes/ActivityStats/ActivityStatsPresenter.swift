//
//  ActivityStatsPresenter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

protocol ActivityStatsPresenter {
    func toggleSpinner(_ state: Bool)
    func presentAlert(title: String, message: String)
    func presentActivityStats()
}

final class ActivityStatsPresenterImpl: UIViewController {

    weak var controller: ActivityStatsPresentable?
}

extension ActivityStatsPresenterImpl: ActivityStatsPresenter {

    func toggleSpinner(_ state: Bool) {
            if state {
    //            guard navigationController?.presentedViewController == nil else { return }
    //            let spinner = SpinnerController()
    //            navigationController?.present(spinner, animated: false, completion: nil)
            } else {
    //            guard let spinner = navigationController?.presentedViewController as? SpinnerController else { return }
    //            spinner.dismiss(animated: false, completion: nil)
            }
        }

    func presentAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: R.string.localizable.alertActionTitleOk(), style: .default, handler: nil)
        alert.addAction(action)
        navigationController?.present(alert, animated: true, completion: nil)
    }

    func presentActivityStats() {
        controller?.displayActivityStats()
    }
}
