//
//  ActivityTilesRouterTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Quick
import Nimble

@testable import ZeroWasteFriendly

final class ActivityTilesRouterTests: QuickSpec {

    override func spec() {

        var router: ActivityTilesRouterImpl!
        var controller: UIViewController!
        var navController: UINavigationController!

        beforeEach {
            router = ActivityTilesRouterImpl()
            controller = ActivityTilesCreator().getController()
            navController = UINavigationController()
            navController.viewControllers = [controller]
            router.controller = controller
        }

        describe("should navigate to ") {

            beforeEach {
                //router.
            }

            it("should move to ... controller") {
                //expect(navController.topViewController).to(beAKindOf())
            }
        }
    }
}
