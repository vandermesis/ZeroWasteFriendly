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
    var presentUserLocationCalled: Bool?
    var presentUserLocationUserLocationCalled: UserLocation?
    var presentZeroWastePlacesCalled: Bool?
    var presentZeroWastePlacesPlacesCalled: [ZeroWastePlace]?

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

    func presentUserLocation(userLocation: UserLocation) {
        presentUserLocationCalled = true
        presentUserLocationUserLocationCalled = userLocation
    }

    func presentZeroWastePlaces(places: [ZeroWastePlace]) {
        presentZeroWastePlacesCalled = true
        presentZeroWastePlacesPlacesCalled = places
    }
}
