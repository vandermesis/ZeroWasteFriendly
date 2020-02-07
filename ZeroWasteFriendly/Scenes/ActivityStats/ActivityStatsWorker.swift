//
//  ActivityStatsWorker.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol ActivityStatsWorker {
    func fetchActivityStats()
}

final class ActivityStatsWorkerImpl {

//    private let networking: UserRepository
//
//    init(networking: UserRepository) {
//        self.networking = networking
//    }

}

extension ActivityStatsWorkerImpl: ActivityStatsWorker {

    func fetchActivityStats() {

    }
}
