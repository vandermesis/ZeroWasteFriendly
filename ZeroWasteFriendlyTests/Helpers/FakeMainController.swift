//
//  FakeMainController.swift
//  ZeroWasteFriendlyTests
//
//  Created by Marek Skrzelowski on 11/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

@testable import ZeroWasteFriendly

final class FakeMainController: MainViewController {

    var toogleSpinnerCalled: Bool?
    var toogleSpinnerStateCalled: Bool?
    var presentAlertCalled: Bool?
    var presentAlertTitleCalled: String?
    var presentAlertMessageCalled: String?

    func toogleSpinner(_ state: Bool) {
        toogleSpinnerCalled = true
        toogleSpinnerStateCalled = state
    }

    func presentAlert(title: String, message: String) {
        presentAlertCalled = true
        presentAlertTitleCalled = title
        presentAlertMessageCalled = message
    }
}
