//
//  ActivityTilesCreatorTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Quick
import Nimble

@testable import ZeroWasteFriendly

final class ActivityTilesCreatorTests: QuickSpec {

    override func spec() {

        var controller: UIViewController?

        describe("getting ActivityTilesController") {

            beforeEach {
                controller = ActivityTilesCreator().getController()
            }

            afterEach {
                controller = nil
            }

            it("should return valid controller") {
                expect(controller).to(beAKindOf(ActivityTilesController.self))
            }
        }
    }
}
