//
//  ActivityInfoWorker.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol ActivityInfoWorker {
    func fetchActivityInfo()
}

final class ActivityInfoWorkerImpl {

//    private let networking: InfoNetworking
//
//    init(networking: InfoNetworking) {
//        self.networking = networking
//    }

}

extension ActivityInfoWorkerImpl: ActivityInfoWorker {

    func fetchActivityInfo() {

    }
}
