//
//  FakeEcoMapWorker.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

@testable import ZeroWasteFriendly

final class FakeEcoMapWorker: EcoMapWorker {

    var fetchUserLocationCalled: Bool?
    var fetchUserLocationCompletion: FetchCurrentLocation?
    var fetchZeroWastePlacesCalled: Bool?
    var fetchZeroWastePlacesCompletion: FetchPlacesCompletion?

    func fetchUserLocation(completion: FetchCurrentLocation?) {
        fetchUserLocationCalled = true
        fetchUserLocationCompletion = completion
    }

    func fetchPlaces(completion: FetchPlacesCompletion?) {
        fetchZeroWastePlacesCalled = true
        fetchZeroWastePlacesCompletion = completion
    }
}
