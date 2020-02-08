//
//  EcoMapWorker.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

typealias FetchEcoMapCompletion = (Result<Model, Error>) -> Void

protocol EcoMapWorker {
    func fetchEcoMap(completion: FetchEcoMapCompletion?)
}

final class EcoMapWorkerImpl {

//    private let networking: MapAnnotationsRepository
//
//    init(networking: MapAnnotationsRepository) {
//        self.networking = networking
//    }
}

extension EcoMapWorkerImpl: EcoMapWorker {

    func fetchEcoMap(completion: FetchEcoMapCompletion?) {
//        networking.fetchModel(completion: completion)
    }
}
