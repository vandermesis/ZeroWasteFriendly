//
//  ActivityInfoRouterTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import XCTest

@testable import ZeroWasteFriendly

final class ActivityInfoRouterTests: XCTestCase {

    var router: ActivityInfoRouterImpl!
    var controller: UIViewController!
    var navController: UINavigationController!

    override func setUp() {
        super.setUp()
        router = ActivityInfoRouterImpl()
        controller = ActivityInfoCreator().getController()
        navController = UINavigationController()
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
