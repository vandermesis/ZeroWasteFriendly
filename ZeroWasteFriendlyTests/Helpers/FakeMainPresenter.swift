//
//  FakeMainPresenter.swift
//  ZeroWasteFriendlyTests
//
//  Created by Marek Skrzelowski on 25/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

@testable import ZeroWasteFriendly

class FakeMainPresenter<T: SpinnerPresentable & AlertPresentable>: SpinnerPresenter, AlertPresenter {

    var toogleSpinnerCalled: Bool?
    var toogleSpinnerStateCalled: Bool?
    var presentAlertCalled: Bool?
    var presentAlertTitleCalled: String?
    var presentAlertMessageCalled: String?
    var presentErrorCalled: Bool?
    var presentErrorErrorCalled: Error?

    func toggleSpinner(_ state: Bool) {
        toogleSpinnerCalled = true
        toogleSpinnerStateCalled = state
    }

    func presentAlert(title: String, message: String) {
        presentAlertCalled = true
        presentAlertTitleCalled = title
        presentAlertMessageCalled = message
    }

    func presentError(_ error: Error) {
        presentErrorCalled = true
        presentErrorErrorCalled = error
    }
}
