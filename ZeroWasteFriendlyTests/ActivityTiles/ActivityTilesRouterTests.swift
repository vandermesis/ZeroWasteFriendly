//
//  ActivityTilesRouterTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import XCTest

@testable import ZeroWasteFriendly

final class ActivityTilesRouterTests: XCTestCase {

    var router: ActivityTilesRouterImpl!
    var controller: MainViewController!
    var navController: MainNavigationController!

    override func setUp() {
        super.setUp()
        router = ActivityTilesRouterImpl()
        controller = ActivityTilesCreator().getController()
        navController = MainNavigationController()
        navController.viewControllers = [controller]
        router.controller = controller
    }

    override func tearDown() {
        router = nil
        controller = nil
        navController = nil
        super.tearDown()
    }
}
