//
//  ActivityTilesCreatorTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import XCTest

@testable import ZeroWasteFriendly

final class ActivityTilesCreatorTests: XCTestCase {

    var sut: ActivityTilesCreator!

    override func setUp() {
        super.setUp()
        sut = ActivityTilesCreator()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testControllerIsCreated() {

        // Given
        let controller = sut.getController()

        // When

        // Then
        XCTAssert(controller is ActivityTilesController)
    }
}
