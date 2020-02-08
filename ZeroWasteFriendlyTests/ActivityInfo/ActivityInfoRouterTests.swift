//
//  ActivityInfoRouterTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import XCTest

@testable import ZeroWasteFriendly

final class ActivityInfoRouterTests: XCTestCase {

    var router: ActivityInfoRouterImpl!
    var controller: MainViewController!
    var navController: MainNavigationController!

    override func setUp() {
        super.setUp()
        router = ActivityInfoRouterImpl()
        controller = ActivityInfoCreator().getController()
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

    func testControllerIsPushingDestinationController() {
        // Given

        // When
        router.navigateTo()
        // Then
        //TODO: Replace ActivityInfoController with destination controller
        XCTAssert(navController.topViewController is ActivityInfoController, "top view controller should be expected destination controller")
    }
}
