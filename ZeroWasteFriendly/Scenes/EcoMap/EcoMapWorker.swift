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
    func fetchEcoMap(completion: FetchEcoMapCompletion?)
}

final class EcoMapWorkerImpl {

    private let networking: ZeroWasteFriendlyNetworking

    init(networking: ZeroWasteFriendlyNetworking) {
        self.networking = networking
    }
}

extension EcoMapWorkerImpl: EcoMapWorker {

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
