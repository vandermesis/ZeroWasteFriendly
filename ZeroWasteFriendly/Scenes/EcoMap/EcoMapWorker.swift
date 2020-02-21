//
//  EcoMapWorker.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

typealias FetchEcoMapCompletion = (Result<[Model], Error>) -> Void

protocol EcoMapWorker {
    func fetchUserLocation(completion: FetchCurrentLocation?)
    func fetchEcoMap(completion: FetchEcoMapCompletion?)
}

final class EcoMapWorkerImpl {

    private let networking: ZeroWasteFriendlyNetworking
    private let locationService: UserLocationService

    init(networking: ZeroWasteFriendlyNetworking, locationService: UserLocationService) {
        self.networking = networking
        self.locationService = locationService
    }
}

extension EcoMapWorkerImpl: EcoMapWorker {

    func fetchUserLocation(completion: FetchCurrentLocation?) {
        locationService.fetchCurrentLocation(completion: completion)
    }

    func fetchEcoMap(completion: FetchEcoMapCompletion?) {
        networking.fetchData { result in
            switch result {
            case .success(let apiResponse):
                let transformedModel = apiResponse.data.map { Model(id: $0.id, name: $0.name)}
                completion?(.success(transformedModel))
            case .failure(let error):
                completion?(.failure(error))
            }
        }
    }
}
