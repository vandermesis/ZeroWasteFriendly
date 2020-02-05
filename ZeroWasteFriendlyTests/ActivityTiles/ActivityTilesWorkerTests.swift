//
//  ActivityTilesWorkerTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Quick
import Nimble

@testable import ZeroWasteFriendly

final class ActivityTilesWorkerTests: QuickSpec {

    override func spec() {

        //var networking: FakeZeroWasteFriendlyNetworking!
        //var worker: ActivityTilesWorkerImpl!

        beforeEach {
            //networking = FakeZeroWasteFriendlyNetworking()
            //worker = ActivityTilesWorkerImpl(networking: networking)
        }

        describe("") {

            //var received...: [...]?
            var receivedError: Error?

            beforeEach {
//                worker. { result in
//                    switch result {
//                    case .success(let ...):
//                        received... = ...
//                    case .failure(let error):
//                        receivedError = error
//                    }
//                }
            }

            afterEach {
                //received... = nil
                receivedError = nil
            }

            context("on success response") {

                beforeEach {
                    //networking.fetch...?(.success(Mock.))
                }

                it("should return ") {
                    //expect(received...).toNot(beNil())
                    //expect(received...?.count).to(equal())
                }

                it("should return no errors") {
                    expect(receivedError).to(beNil())
                }
            }

            context("on error response") {

                beforeEach {
                    //networking.fetch...?(.failure(...Error(message: "error")))
                }

                it("should not return ... list") {
                    //expect(received...).to(beNil())
                }

                it("should return error") {
                    //expect(receivedError).to(beAKindOf(...))
                }
            }
        }
    }
}
