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

//    private let networking: ZeroWasteActivityInfoNetworking
//
//    init(networking: ZeroWasteActivityInfoNetworking) {
//        self.networking = networking
//    }

}

extension ActivityTilesWorkerImpl: ActivityTilesWorker {

    func fetchActivityTiles(completion: FetchActivityTilesCompletion?) {
//        networking.fetchModel(completion: completion)
    }
}
