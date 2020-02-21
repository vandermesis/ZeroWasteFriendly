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

    func testInteractorIsGettingData() {
        // Given

        // When
        interactor.getZeroWastePlaces()
        // Then
        XCTAssertEqual(worker.fetchEcoMapCalled, true, "calling worker to fetch data is true")
    }

    func testInteractorIsGettingDataIsSuccess() {
        // Given
        interactor.getZeroWastePlaces()
        // When
        worker.fetchEcoMapCompletion?(.success([Mock.model]))
        // Then
        XCTAssertEqual(presenter.presentEcoMapCalled, true, "calling presenter to present data is true")
    }

    func testInteractorIsGettingDataIsFailure() {
        // Given
        interactor.getZeroWastePlaces()
        // When
        worker.fetchEcoMapCompletion?(.failure(UnitTestError()))
        // Then
        XCTAssertEqual(presenter.presentEcoMapCalled, nil, "calling presenter to present data is nil")
    }
}
