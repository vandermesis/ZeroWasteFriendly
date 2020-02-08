//
//  ActivityInfoPresenterTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import XCTest

@testable import ZeroWasteFriendly

final class ActivityInfoPresenterTests: XCTestCase {

    var presenter: ActivityInfoPresenterImpl!
    var controller: FakeActivityInfoController!

    override func setUp() {
        super.setUp()
        controller = FakeActivityInfoController()
        presenter = ActivityInfoPresenterImpl()
        presenter.controller = controller
    }

    override func tearDown() {
        controller = nil
        presenter = nil
        super.tearDown()
    }

    func testControllerIsDisplayingActivityInfo() {
        // Given

        // When
        presenter.presentActivityInfo()
        // Then
        XCTAssertEqual(controller.displayActivityInfoCalled, true, "calling controller to display data is true")
    }
}
