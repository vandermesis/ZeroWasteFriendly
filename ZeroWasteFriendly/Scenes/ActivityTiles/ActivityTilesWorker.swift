//
//  ActivityTilesWorker.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

typealias FetchActivityTilesCompletion = (Result<[Model], Error>) -> Void

protocol ActivityTilesWorker {
    func fetchActivityTiles(completion: FetchActivityTilesCompletion?)
}

final class ActivityTilesWorkerImpl {

    private let networking: ZeroWasteFriendlyNetworking

    init(networking: ZeroWasteFriendlyNetworking) {
        self.networking = networking
    }

}

extension ActivityTilesWorkerImpl: ActivityTilesWorker {

    func fetchActivityTiles(completion: FetchActivityTilesCompletion?) {
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
