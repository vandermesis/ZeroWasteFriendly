//
//  FakeEcoMapPresenter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

@testable import ZeroWasteFriendly

final class FakeEcoMapPresenter: EcoMapPresenter {

    var toogleSpinnerCalled: Bool?
    var toogleSpinnerStateCalled: Bool?
    var presentAlertCalled: Bool?
    var presentAlertTitleCalled: String?
    var presentAlertMessageCalled: String?
    var presentErrorCalled: Bool?
    var presentErrorErrorCalled: Error?
    var presentEcoMapCalled: Bool?
    var presentEcoMapModelCalled: [Model]?

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

    func presentEcoMap(model: [Model]) {
        presentEcoMapCalled = true
        presentEcoMapModelCalled = model
    }
}
