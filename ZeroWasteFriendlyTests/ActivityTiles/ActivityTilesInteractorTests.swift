//
//  ActivityTilesInteractorTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Quick
import Nimble

@testable import ZeroWasteFriendly

final class ActivityTilesInteractorTests: QuickSpec {

    override func spec() {

        var router: FakeActivityTilesRouter!
        var worker: FakeActivityTilesWorker!
        var presenter: FakeActivityTilesPresenter!
        var interactor: ActivityTilesInteractorImpl!

        beforeEach {
            router = FakeActivityTilesRouter()
            worker = FakeActivityTilesWorker()
            presenter = FakeActivityTilesPresenter()
            interactor = ActivityTilesInteractorImpl(presenter: presenter, worker: worker, router: router)
        }

        describe("") {

            beforeEach {
                //interactor.
            }

            it("should ") {
                //expect(presenter.).to()
            }

            context("on success response") {

                beforeEach {
                    //worker.
                }

                it("should ") {

                }
            }

            context("on error response") {

                beforeEach {
                    //worker.
                }

                it("should ") {
                    //expect(presenter.).to()
                }
            }
        }
    }
}
