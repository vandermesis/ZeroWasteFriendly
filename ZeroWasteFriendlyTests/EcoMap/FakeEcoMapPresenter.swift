//
//  FakeEcoMapPresenter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

@testable import ZeroWasteFriendly

final class FakeEcoMapPresenter<T: EcoMapPresentable>: FakeMainPresenter<T>, EcoMapPresenter {

    var presentUserLocationCalled: Bool?
    var presentUserLocationUserLocationCalled: Location?
    var presentPlacesCalled: Bool?
    var presentPlacesPlacesCalled: [Place]?

    func presentUserLocation(userLocation: Location) {
        presentUserLocationCalled = true
        presentUserLocationUserLocationCalled = userLocation
    }

    func presentPlaces(places: [Place]) {
        presentPlacesCalled = true
        presentPlacesPlacesCalled = places
    }
}
