//
//  ActivityInfoWorker.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

typealias FetchActivityInfoCompletion = (Result<Model, Error>) -> Void

protocol ActivityInfoWorker {
    func fetchActivityInfo(completion: FetchActivityInfoCompletion?)
}

final class ActivityInfoWorkerImpl {

//    private let networking: ZeroWasteInfoNetworking
//
//    init(networking: ZeroWasteInfoNetworking) {
//        self.networking = networking
//    }
}

extension ActivityInfoWorkerImpl: ActivityInfoWorker {

    func fetchActivityInfo(completion: FetchActivityInfoCompletion?) {
//        networking.fetchModel(completion: completion)
    }
}
