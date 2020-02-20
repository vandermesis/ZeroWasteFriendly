//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import XCTest

@testable import ___PROJECTNAMEASIDENTIFIER___

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
