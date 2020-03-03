//
//  LibraryRouterTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 01/03/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import XCTest

@testable import ZeroWasteFriendly

final class LibraryRouterTests: XCTestCase {

    var router: LibraryRouterImpl!
    var controller: MainViewController!
    var navController: MainNavigationController!

    override func setUp() {
        super.setUp()
        router = LibraryRouterImpl()
        controller = LibraryCreator().getController()
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
        //TODO: Replace LibraryController with destination controller
        XCTAssert(navController.topViewController is LibraryController,
                  "top view controller should be expected destination controller")
    }
}
