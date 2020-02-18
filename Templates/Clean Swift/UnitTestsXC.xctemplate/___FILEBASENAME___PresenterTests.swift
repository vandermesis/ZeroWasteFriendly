//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import XCTest

@testable import ___PROJECTNAMEASIDENTIFIER___

final class ___VARIABLE_sceneName___PresenterTests: XCTestCase {

    var presenter: ___VARIABLE_sceneName___PresenterImpl<Fake___VARIABLE_sceneName___Controller>!
    var controller: Fake___VARIABLE_sceneName___Controller!

    override func setUp() {
        super.setUp()
        controller = Fake___VARIABLE_sceneName___Controller()
        presenter = ___VARIABLE_sceneName___PresenterImpl()
        presenter.controller = controller
    }

    override func tearDown() {
        controller = nil
        presenter = nil
        super.tearDown()
    }

    func testControllerIsDisplaying___VARIABLE_sceneName___() {
        // Given

        // When
        presenter.present___VARIABLE_sceneName___(model: [Mock.model])
        // Then
        XCTAssertEqual(controller.display___VARIABLE_sceneName___Called, true, "calling controller to display data is true")
    }
}
