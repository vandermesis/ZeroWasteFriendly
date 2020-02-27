//
//  EcoMapRouterTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import XCTest

@testable import ZeroWasteFriendly

final class EcoMapRouterTests: XCTestCase {

    var router: EcoMapRouterImpl!
    var controller: MainViewController!
    var navController: MainNavigationController!

    override func setUp() {
        super.setUp()
        router = EcoMapRouterImpl()
        controller = EcoMapCreator().getController()
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
        //TODO: Replace EcoMapController with destination controller
        XCTAssert(navController.topViewController is EcoMapController,
                  "top view controller should be expected destination controller")
    }
}
