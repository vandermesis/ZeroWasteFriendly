//
//  ActivityInfoInteractorTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
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

    func testPresenterIsPresentingSpinner() {
            // Given

            // When
            interactor.getActivityInfo()
            // Then
            XCTAssertEqual(presenter.toogleSpinnerCalled, true, "calling presenter to toogle spiner is true")
            XCTAssertEqual(presenter.toogleSpinnerStateCalled, true, "calling presenter to toogle spiner state to true")
        }

    //    func testPresenterIsHidingSpinner() {
    //        // Given
    //        interactor.getActivityInfo()
    //        // When
    //        worker.fetchActivityInfoCompletion?(.succes())
    //        // Then
    //        XCTAssertEqual(presenter.toogleSpinnerCalled, true, "calling presenter to toogle spiner state is true")
    //        XCTAssertEqual(presenter.toogleSpinnerStateCalled, false, "calling presenter to toogle spiner state to false")
    //    }

        func testWorkerIsFetchingData() {
            // Given
            interactor.getActivityInfo()
            // When

            // Then
            XCTAssertEqual(worker.fetchActivityInfoCalled, true, "calling worker to fetch data is true")
        }

        func testPresenterIsPresentingAlert() {
            // Given
            interactor.getActivityInfo()
            // When
            worker.fetchActivityInfoCompletion?(.failure(UnitTestError()))
            // Then
            XCTAssertEqual(presenter.presentAlertCalled, true, "calling presenter to present alert is true")
        }

        func testPresenterIsPresentingActivityInfo() {
            // Given

            // When
            interactor.getActivityInfo()
            // Then
            XCTAssertEqual(presenter.presentActivityInfoCalled, true, "calling presenter to present data")
        }
}
