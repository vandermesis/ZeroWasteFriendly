//
//  ActivityStatsWorker.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

typealias FetchActivityStatsCompletion = (Result<Model, Error>) -> Void

protocol ActivityStatsWorker {
    func fetchActivityStats(completion: FetchActivityStatsCompletion?)
}

final class ActivityStatsWorkerImpl {

//    private let networking: UserRepository
//
//    init(networking: UserRepository) {
//        self.networking = networking
//    }
}

extension ActivityStatsWorkerImpl: ActivityStatsWorker {

    func fetchActivityStats(completion: FetchActivityStatsCompletion?) {
//        networking.fetchModel(completion: completion)
    }
}
