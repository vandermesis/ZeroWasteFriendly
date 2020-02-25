//
//  EcoMapInteractorTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import XCTest

@testable import ZeroWasteFriendly

final class EcoMapInteractorTests: XCTestCase {

    var router: FakeEcoMapRouter!
    var worker: FakeEcoMapWorker!
    var presenter: FakeEcoMapPresenter!
    var interactor: EcoMapInteractorImpl!

    override func setUp() {
        super.setUp()
        router = FakeEcoMapRouter()
        worker = FakeEcoMapWorker()
        presenter = FakeEcoMapPresenter()
        interactor = EcoMapInteractorImpl(presenter: presenter, worker: worker, router: router)
    }

    override func tearDown() {
        router = nil
        worker = nil
        presenter = nil
        interactor = nil
        super.tearDown()
    }

    func testInteractorIsGettingUserLocation() {
        // Given

        // When
        interactor.getUserLocation()
        // Then
        XCTAssertEqual(presenter.toogleSpinnerCalled, true, "calling presenter to toogle spinner is true")
        XCTAssertEqual(presenter.toogleSpinnerStateCalled, true, "presenter toogle spinner state is true" )
        XCTAssertEqual(worker.fetchUserLocationCalled, true, "calling worker to fetch user location is true")
    }

    func testInteractorIsGettingUserLocationIsSuccess() {
        // Given
        interactor.getUserLocation()
        // When
        worker.fetchUserLocationCompletion?(.success(Mock.location))
        // Then
        XCTAssertEqual(presenter.toogleSpinnerCalled, true, "calling presenter to toogle spinner is true")
        XCTAssertEqual(presenter.toogleSpinnerStateCalled, false, "presenter toogle spinner state is false" )
        XCTAssertEqual(presenter.presentUserLocationCalled, true, "calling presenter to present user location is true")
        XCTAssertEqual(presenter.presentUserLocationUserLocationCalled?.latitude, 50.257564, "presenter should receive valid data")
    }

    func testInteractorIsGettingUserLocationIsFailure() {
        // Given
        interactor.getUserLocation()
        // When
        worker.fetchUserLocationCompletion?(.failure(UnitTestError()))
        // Then
        XCTAssertEqual(presenter.toogleSpinnerCalled, true, "calling presenter to toogle spinner is true")
        XCTAssertEqual(presenter.toogleSpinnerStateCalled, false, "presenter toogle spinner state is false" )
        XCTAssertEqual(presenter.presentUserLocationCalled, nil, "calling presenter to present user location is nil")
        XCTAssertEqual(presenter.presentErrorCalled, true, "calling presenter to present error it true")
    }

    func testInteractorIsGettingPlaces() {
        // Given

        // When
        interactor.getPlaces()
        // Then
        XCTAssertEqual(presenter.toogleSpinnerCalled, true, "calling presenter to toogle spinner is true")
        XCTAssertEqual(presenter.toogleSpinnerStateCalled, true, "presenter toogle spinner state is true" )
        XCTAssertEqual(worker.fetchPlacesCalled, true, "calling worker to fetch data is true")
    }

    func testInteractorIsGettingPlacesIsSuccess() {
        // Given
        interactor.getPlaces()
        // When
        worker.fetchPlacesCompletion?(.success(Mock.places))
        // Then
        XCTAssertEqual(presenter.toogleSpinnerCalled, true, "calling presenter to toogle spinner is true")
        XCTAssertEqual(presenter.toogleSpinnerStateCalled, false, "presenter toogle spinner state is false" )
        XCTAssertEqual(presenter.presentPlacesCalled, true, "calling presenter to present data is true")
        XCTAssertEqual(presenter.presentPlacesPlacesCalled?.count, 3, "presenter should receive valid amount of data")
    }

    func testInteractorIsGettingPlacesIsFailure() {
        // Given
        interactor.getPlaces()
        // When
        worker.fetchPlacesCompletion?(.failure(UnitTestError()))
        // Then
        XCTAssertEqual(presenter.toogleSpinnerCalled, true, "calling presenter to toogle spinner is true")
        XCTAssertEqual(presenter.toogleSpinnerStateCalled, false, "presenter toogle spinner state is false" )
        XCTAssertEqual(presenter.presentPlacesCalled, nil, "calling presenter to present data is nil")
        XCTAssertEqual(presenter.presentErrorCalled, true, "calling presenter to present error it true")
    }
}
