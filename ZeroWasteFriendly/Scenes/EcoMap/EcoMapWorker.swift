//
//  EcoMapWorker.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

typealias FetchEcoMapCompletion = (Result<[ZeroWastePlace], Error>) -> Void

protocol EcoMapWorker {
    func fetchUserLocation(completion: FetchCurrentLocation?)
    func fetchZeroWastePlaces(completion: FetchEcoMapCompletion?)
}

final class EcoMapWorkerImpl {

    private let repository: ZeroWastePlacesRepository
    private let locationService: UserLocationService

    init(repository: ZeroWastePlacesRepository, locationService: UserLocationService) {
        self.repository = repository
        self.locationService = locationService
    }
}

extension EcoMapWorkerImpl: EcoMapWorker {

    func fetchUserLocation(completion: FetchCurrentLocation?) {
        locationService.fetchCurrentLocation(completion: completion)
    }

    func fetchZeroWastePlaces(completion: FetchEcoMapCompletion?) {
        repository.fetchZeroWastePlaces(completion: completion)
    }
}
