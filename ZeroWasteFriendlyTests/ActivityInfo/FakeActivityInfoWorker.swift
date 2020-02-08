//
//  FakeActivityInfoWorker.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

@testable import ZeroWasteFriendly

final class FakeActivityInfoWorker: ActivityInfoWorker {

    var fetchActivityInfoCalled: Bool?
    var fetchActivityInfoCompletion: FetchActivityTilesCompletion?

    func fetchActivityInfo(completion: FetchActivityInfoCompletion?) {
        fetchActivityInfoCalled = true
        fetchActivityInfoCompletion = completion
    }
}
