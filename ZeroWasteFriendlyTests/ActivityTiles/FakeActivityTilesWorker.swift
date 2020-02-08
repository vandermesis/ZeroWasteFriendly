//
//  FakeActivityTilesWorker.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

@testable import ZeroWasteFriendly

final class FakeActivityTilesWorker: ActivityTilesWorker {

    var fetchActivityTilesCalled: Bool?
    var fetchActivityTilesCompletion: FetchActivityTilesCompletion?

    func fetchActivityTiles(completion: FetchActivityTilesCompletion?) {
        fetchActivityTilesCalled = true
        fetchActivityTilesCompletion = completion
    }
}
