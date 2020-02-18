//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import XCTest

@testable import ___PROJECTNAMEASIDENTIFIER___

final class ___VARIABLE_sceneName___InteractorTests: XCTestCase {

    var router: Fake___VARIABLE_sceneName___Router!
    var worker: Fake___VARIABLE_sceneName___Worker!
    var presenter: Fake___VARIABLE_sceneName___Presenter!
    var interactor: ___VARIABLE_sceneName___InteractorImpl!

    override func setUp() {
        super.setUp()
        router = Fake___VARIABLE_sceneName___Router()
        worker = Fake___VARIABLE_sceneName___Worker()
        presenter = Fake___VARIABLE_sceneName___Presenter()
        interactor = ___VARIABLE_sceneName___InteractorImpl(presenter: presenter, worker: worker, router: router)
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
        interactor.get___VARIABLE_sceneName___()
        // Then
        XCTAssertEqual(worker.fetch___VARIABLE_sceneName___Called, true, "calling worker to fetch data is true")
    }

    func testInteractorIsGettingDataIsSuccess() {
        // Given
        interactor.get___VARIABLE_sceneName___()
        // When
        worker.fetch___VARIABLE_sceneName___Completion?(.success([Mock.model]))
        // Then
        XCTAssertEqual(presenter.present___VARIABLE_sceneName___Called, true, "calling presenter to present data is true")
    }

    func testInteractorIsGettingDataIsFailure() {
        // Given
        interactor.get___VARIABLE_sceneName___()
        // When
        worker.fetch___VARIABLE_sceneName___Completion?(.failure(UnitTestError()))
        // Then
        XCTAssertEqual(presenter.present___VARIABLE_sceneName___Called, nil, "calling presenter to present data is nil")
    }
}
