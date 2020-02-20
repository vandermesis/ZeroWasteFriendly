//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import XCTest

@testable import ___PROJECTNAMEASIDENTIFIER___

final class ___VARIABLE_sceneName___RouterTests: XCTestCase {

    var router: ___VARIABLE_sceneName___RouterImpl!
    var controller: MainViewController!
    var navController: MainNavigationController!

    override func setUp() {
        super.setUp()
        router = ___VARIABLE_sceneName___RouterImpl()
        controller = ___VARIABLE_sceneName___Creator().getController()
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
        //TODO: Replace ___VARIABLE_sceneName___Controller with destination controller
        XCTAssert(navController.topViewController is ___VARIABLE_sceneName___Controller,
                  "top view controller should be expected destination controller")
    }
}
