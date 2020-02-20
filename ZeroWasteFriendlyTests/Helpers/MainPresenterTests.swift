//
//  MainPresenterTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 11/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import XCTest

@testable import ZeroWasteFriendly

final class MainPresenterTests: XCTestCase {

    var controller: FakeMainController!
    var presenter: MainPresenter<FakeMainController>!

    override func setUp() {
        super.setUp()
        controller = FakeMainController()
        presenter = MainPresenter<FakeMainController>()
        presenter.controller = controller
    }

    override func tearDown() {
        controller = nil
        presenter = nil
        super.tearDown()
    }

    func testPresenterIsPresentingSpinner() {
        // Given

        // When
        presenter.toggleSpinner(true)
        // Then
        XCTAssertEqual(controller.toogleSpinnerCalled, true, "calling controller to display spinner state is true")
    }
}
