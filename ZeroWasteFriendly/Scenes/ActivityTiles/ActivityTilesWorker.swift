//
//  ActivityTilesWorker.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

typealias FetchActivityTilesCompletion = (Result<Model, Error>) -> Void

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
//        networking.fetchActivityTiles { [weak self] result in
//            guard let self = self else { return }
//            switch result {
//            case .success(let apiResponse):
//                let transformedModel = apiResponse.map { Model(id: $0.recordid,
//                                                               name: $0.fields.accentcity,
//                                                               latitude: $0.fields.latitude,
//                                                               longitude: $0.fields.longitude)}
//                completion?(.success(transformedModel.sortByName()))
//            case .failure(let error):
//                completion?(.failure(error))
//            }
//        }
    }
}
