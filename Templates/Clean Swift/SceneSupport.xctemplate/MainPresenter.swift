//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
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
