//
//  ActivityTilesInteractorTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import XCTest

@testable import ZeroWasteFriendly

final class ActivityTilesInteractorTests: XCTestCase {

    var router: FakeActivityTilesRouter!
    var worker: FakeActivityTilesWorker!
    var presenter: FakeActivityTilesPresenter!
    var interactor: ActivityTilesInteractorImpl!

    override func setUp() {
        super.setUp()
        router = FakeActivityTilesRouter()
        worker = FakeActivityTilesWorker()
        presenter = FakeActivityTilesPresenter()
        interactor = ActivityTilesInteractorImpl(presenter: presenter, worker: worker, router: router)
    }

    override func tearDown() {
        router = nil
        worker = nil
        presenter = nil
        interactor = nil
        super.tearDown()
    }
}
