//
//  LibraryWorker.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 27/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

typealias FetchInfoCompletion = (Result<[Model], Error>) -> Void

protocol LibraryWorker {
    func fetchInfo(completion: FetchInfoCompletion?)
}

final class LibraryWorkerImpl {

    private let networking: ZeroWasteFriendlyNetworking

    init(networking: ZeroWasteFriendlyNetworking) {
        self.networking = networking
    }
}

extension LibraryWorkerImpl: LibraryWorker {

    func fetchInfo(completion: FetchInfoCompletion?) {
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
