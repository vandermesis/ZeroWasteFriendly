//
//  FakePlacesRepository.swift
//  ZeroWasteFriendlyTests
//
//  Created by Marek Skrzelowski on 26/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

@testable import ZeroWasteFriendly

final class FakePlacesRepository: PlacesRepository {

    var fetchPlacesCalled: Bool?
    var fetchPlacesCompletion: FetchPlacesCompletion?

    func fetchPlaces(completion: FetchPlacesCompletion?) {
        fetchPlacesCalled = true
        fetchPlacesCompletion = completion
    }
}
