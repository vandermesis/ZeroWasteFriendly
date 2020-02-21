//
//  EcoMapWorker.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol EcoMapWorker {
    func fetchUserLocation(completion: FetchCurrentLocation?)
    func fetchPlaces(completion: FetchPlacesCompletion?)
}

final class EcoMapWorkerImpl {

    private let repository: PlacesRepository
    private let locationService: UserLocationService

    init(repository: PlacesRepository, locationService: UserLocationService) {
        self.repository = repository
        self.locationService = locationService
    }
}

extension EcoMapWorkerImpl: EcoMapWorker {

    func fetchUserLocation(completion: FetchCurrentLocation?) {
        locationService.fetchCurrentLocation(completion: completion)
    }

    func fetchPlaces(completion: FetchPlacesCompletion?) {
        repository.fetchPlaces(completion: completion)
    }
}
