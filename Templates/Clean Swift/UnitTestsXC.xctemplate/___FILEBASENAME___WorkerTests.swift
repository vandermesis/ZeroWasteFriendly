//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import XCTest

@testable import ___PROJECTNAMEASIDENTIFIER___

final class ___VARIABLE_sceneName___WorkerTests: XCTestCase {

    var worker: ___VARIABLE_sceneName___WorkerImpl!
    var receivedModel: [Model]?
    var receivedError: Error?

    override func setUp() {
        super.setUp()
        worker = ___VARIABLE_sceneName___WorkerImpl()
    }

    override func tearDown() {
        worker = nil
        receivedModel = nil
        receivedError = nil
        super.tearDown()
    }

    func testExample() {

        // Given

        // When

        // Then
        // XCTAssertEqual()
    }

    func testWorkerIsFetchingModel() {
        // Given
        worker.fetch___VARIABLE_sceneName___ { result in
            switch result {
            case .success(let model):
                self.receivedModel = model
            case .failure(let error):
                self.receivedError = error
            }
        }
        // When

        // Then

    }

    func testWorkerIsFetchingIsSuccess() {
        // Given
        worker.fetch___VARIABLE_sceneName___ { result in
            switch result {
            case .success(let model):
                self.receivedModel = model
            case .failure(let error):
                self.receivedError = error
            }
        }
        // When

        // Then

    }

    func testWorkerIsFetchingIsFailure() {
        // Given
        worker.fetch___VARIABLE_sceneName___ { result in
            switch result {
            case .success(let model):
                self.receivedModel = model
            case .failure(let error):
                self.receivedError = error
            }
        }
        // When
        
        // Then
        XCTAssert(receivedError is UnitTestError, "worker should receive Error")
    }
}
