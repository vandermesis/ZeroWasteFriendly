//
//  ActivityTilesPresenterTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Quick
import Nimble

@testable import ZeroWasteFriendly

final class ActivityTilesPresenterTests: QuickSpec {

    override func spec() {

        var presenter: ActivityTilesPresenterImpl!
        var controller: FakeActivityTilesController!

        beforeEach {
            controller = FakeActivityTilesController()
            presenter = ActivityTilesPresenterImpl()
            presenter.controller = controller
        }

        describe("") {

            beforeEach {
                //presenter.
            }

            it("should ") {
                //expect(controller.).to()
            }
        }
    }
}
