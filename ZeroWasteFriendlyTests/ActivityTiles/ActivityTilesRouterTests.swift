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
    var controller: UIViewController!
    var navController: UINavigationController!

    override func setUp() {
        super.setUp()
        router = ActivityTilesRouterImpl()
        controller = ActivityTilesCreator().getController()
        navController = UINavigationController()
        navController.viewControllers = [controller]
        router.controller = controller
    }

    override func tearDown() {
        router = ActivityTilesRouterImpl()
        controller = ActivityTilesCreator().getController()
        navController = UINavigationController()
        navController.viewControllers = [controller]
        router.controller = controller
        super.tearDown()
    }
    
}
