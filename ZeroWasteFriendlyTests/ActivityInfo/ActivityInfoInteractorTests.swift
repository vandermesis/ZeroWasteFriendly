//
//  ActivityInfoInteractorTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import XCTest

@testable import ZeroWasteFriendly

final class ActivityInfoInteractorTests: XCTestCase {

    var router: FakeActivityInfoRouter!
    var worker: FakeActivityInfoWorker!
    var presenter: FakeActivityInfoPresenter!
    var interactor: ActivityInfoInteractorImpl!

    override func setUp() {
        super.setUp()
        router = FakeActivityInfoRouter()
        worker = FakeActivityInfoWorker()
        presenter = FakeActivityInfoPresenter()
        interactor = ActivityInfoInteractorImpl(presenter: presenter, worker: worker, router: router)
    }

    override func tearDown() {
        router = nil
        worker = nil
        presenter = nil
        interactor = nil
        super.tearDown()
    }
}
