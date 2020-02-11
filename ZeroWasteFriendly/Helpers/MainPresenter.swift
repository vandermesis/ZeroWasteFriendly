//
//  MainPresenter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

protocol SpinnerPresenter {
    func toggleSpinner(_ state: Bool)
}

protocol AlertPresenter {
    func presentAlert(title: String, message: String)
    func presentError(_ error: Error)
}

class MainPresenter<T: SpinnerPresentable & AlertPresentable>: SpinnerPresenter, AlertPresenter {

    weak var controller: T?

    func toggleSpinner(_ state: Bool) {
        controller?.toogleSpinner(state)
    }

    func presentAlert(title: String, message: String) {
        controller?.presentAlert(title: title, message: message)
    }

    func presentError(_ error: Error) {
        controller?.presentAlert(title: R.string.localizable.errorTitle(), message: error.userFriendlyMessage)
    }
}
