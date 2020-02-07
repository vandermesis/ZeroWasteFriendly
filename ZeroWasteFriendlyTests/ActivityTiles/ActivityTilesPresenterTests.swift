//
//  ActivityTilesPresenterTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import XCTest

@testable import ZeroWasteFriendly

final class ActivityTilesPresenterTests: XCTestCase {

    var presenter: ActivityTilesPresenterImpl!
    var controller: FakeActivityTilesController!

    override func setUp() {
        super.setUp()
        controller = FakeActivityTilesController()
        presenter = ActivityTilesPresenterImpl()
        presenter.controller = controller
    }

    override func tearDown() {
        controller = nil
        presenter = nil
        super.tearDown()
    }
}