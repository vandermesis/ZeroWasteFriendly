//
//  ActivityTilesPresenter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

protocol ActivityTilesPresenter: UIViewController {
    func toggleSpinner(_ state: Bool)
    func presentAlert(title: String, message: String)
    func presentActivityTiles()
}

final class ActivityTilesPresenterImpl: UIViewController {

    weak var controller: ActivityTilesPresentable?
}

extension ActivityTilesPresenterImpl: ActivityTilesPresenter {

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

    func presentActivityTiles() {
        controller?.displayActivityTiles()
    }
}
