//
//  ActivityTilesInteractorTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import XCTest

@testable import ZeroWasteFriendly

final class ActivityTilesInteractorTests: XCTestCase {

    var router: FakeActivityTilesRouter!
    var worker: FakeActivityTilesWorker!
    var presenter: FakeActivityTilesPresenter!
    var interactor: ActivityTilesInteractorImpl!

    override func setUp() {
        super.setUp()
        router = FakeActivityTilesRouter()
        worker = FakeActivityTilesWorker()
        presenter = FakeActivityTilesPresenter()
        interactor = ActivityTilesInteractorImpl(presenter: presenter, worker: worker, router: router)
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
        interactor.getActivityTiles()
        // Then
        XCTAssertEqual(presenter.toogleSpinnerCalled, true, "calling presenter to toogle spiner is true")
        XCTAssertEqual(presenter.toogleSpinnerStateCalled, true, "calling presenter to toogle spiner state to true")
    }

//    func testPresenterIsHidingSpinner() {
//        // Given
//        interactor.getActivityTiles()
//        // When
//        worker.fetchActivityTilesCompletion?(.succes())
//        // Then
//        XCTAssertEqual(presenter.toogleSpinnerCalled, true, "calling presenter to toogle spiner state is true")
//        XCTAssertEqual(presenter.toogleSpinnerStateCalled, false, "calling presenter to toogle spiner state to false")
//    }

    func testWorkerIsFetchingData() {
        // Given
        interactor.getActivityTiles()
        // When

        // Then
        XCTAssertEqual(worker.fetchActivityTilesCalled, true, "calling worker to fetch data is true")
    }

    func testPresenterIsPresentingAlert() {
        // Given
        interactor.getActivityTiles()
        // When
        worker.fetchActivityTilesCompletion?(.failure(UnitTestError()))
        // Then
        XCTAssertEqual(presenter.presentAlertCalled, true, "calling presenter to present alert is true")
    }

//    func testPresenterIsPresentingActivityTiles() {
//        // Given
//        interactor.getActivityTiles()
//        // When
//        worker.fetchActivityTilesCompletion?(.succes())
//        // Then
//        XCTAssertEqual(presenter.presentActivityTilesCalled, true, "calling presenter to present data")
//    }
}
