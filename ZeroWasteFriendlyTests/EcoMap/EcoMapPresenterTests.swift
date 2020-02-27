//
//  EcoMapPresenterTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import XCTest

@testable import ZeroWasteFriendly

final class EcoMapPresenterTests: XCTestCase {

    var presenter: EcoMapPresenterImpl<FakeEcoMapController>!
    var controller: FakeEcoMapController!

    override func setUp() {
        super.setUp()
        controller = FakeEcoMapController()
        presenter = EcoMapPresenterImpl()
        presenter.controller = controller
    }

    override func tearDown() {
        controller = nil
        presenter = nil
        super.tearDown()
    }

    func testControllerIsDisplayingUserLocation() {
        // Given

        // When
        presenter.presentUserLocation(userLocation: Mock.location)
        // Then
        XCTAssertEqual(controller.displayUserLocationCalled, true, "calling controller to display user location is true")
    }

    func testControllerIsDisplayingPlaces() {
        // Given

        // When
        presenter.presentPlaces(places: Mock.places)
        // Then
        XCTAssertEqual(controller.displayPlacesCalled, true, "calling controller to display data is true")
        XCTAssertEqual(controller.displayPlacesAnnotationsCalled?.count, 5, "controller should receive valid amount of data")
        XCTAssertEqual(controller.displayPlacesAnnotationsCalled?.first?.title, "Drogeria Hebe", "controller should receive valid converted data")
        XCTAssert(controller.displayPlacesAnnotationsCalled is [PlaceAnnotation], "controller should receive data converted to displayable model")
    }
}
