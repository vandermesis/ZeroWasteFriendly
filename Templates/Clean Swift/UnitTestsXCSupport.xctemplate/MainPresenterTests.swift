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
        XCTAssertEqual(controller.toogleSpinnerCalled, true, "calling controller to display spinner is true")
        XCTAssertEqual(controller.toogleSpinnerStateCalled, true, "calling controller to display spinner state is true")
    }

    func testPresenterIsNotPresentingSpinner() {
        // Given

        // When
        presenter.toggleSpinner(false)
        // Then
        XCTAssertEqual(controller.toogleSpinnerCalled, true, "calling controller to display spinner is true")
        XCTAssertEqual(controller.toogleSpinnerStateCalled, false, "calling controller to display spinner state is false")
    }

    func testPresenterIsPresentingAlert() {
        // Given

        // When
        presenter.presentAlert(title: "Title", message: "Message")
        // Then
        XCTAssertEqual(controller.presentAlertCalled, true, "calling controller to display alert is true")
        XCTAssertEqual(controller.presentAlertTitleCalled, "Title", "alert should have valid title")
        XCTAssertEqual(controller.presentAlertMessageCalled, "Message", "alert should have valid message")
    }

    func testPresenterIsPresentingError() {
        // Given

        // When
        presenter.presentError(UnitTestError())
        // Then
        XCTAssertEqual(controller.presentAlertCalled, true, "calling controller to display alert is true")
        XCTAssertEqual(controller.presentAlertTitleCalled, "Error", "alert should have Error title")
        XCTAssertEqual(controller.presentAlertMessageCalled, "Unknown Error", "alert should have valid message")
    }
}
