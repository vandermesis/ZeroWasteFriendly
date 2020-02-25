//
//  EcoMapPresenterTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import XCTest

@testable import ZeroWasteFriendly

final class EcoMapPresenterTests: XCTestCase {

    var presenter: EcoMapPresenterImpl<FakeEcoMapController>!
    var controller: FakeEcoMapController!

    override func setUp() {
        super.setUp()
        controller = FakeEcoMapController()
        presenter = EcoMapPresenterImpl()
        presenter.controller = controller
    }

    override func tearDown() {
        controller = nil
        presenter = nil
        super.tearDown()
    }

    func testControllerIsDisplayingEcoMap() {
        // Given

        // When
        presenter.presentPlaces(places: Mock.places)
        // Then
        XCTAssertEqual(controller.displayPlacesCalled, true, "calling controller to display data is true")
    }
}
