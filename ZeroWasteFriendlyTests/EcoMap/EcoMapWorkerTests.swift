//
//  EcoMapWorkerTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import XCTest

@testable import ZeroWasteFriendly

final class EcoMapWorkerTests: XCTestCase {

    var repository: FakePlacesRepository!
    var locationServices: FakeLocationService!
    var worker: EcoMapWorkerImpl!
    var receivedLocation: Location?
    var receivedPlaces: [Place]?
    var receivedError: Error?

    override func setUp() {
        super.setUp()
        repository = FakePlacesRepository()
        locationServices = FakeLocationService()
        worker = EcoMapWorkerImpl(repository: repository, locationService: locationServices)
    }

    override func tearDown() {
        repository = nil
        locationServices = nil
        worker = nil
        receivedLocation = nil
        receivedError = nil
        super.tearDown()
    }

    func testWorkerIsFetchingUserLocation() {
        // Given
        worker.fetchUserLocation { result in
            switch result {
            case .success(let location):
                self.receivedLocation = location
            case .failure(let error):
                self.receivedError = error
            }
        }
        // When
        locationServices.fetchCurrentLocationCompletion?(.success(Mock.location))
        // Then
        XCTAssertEqual(locationServices.fetchCurrentLocationCalled, true, "calling location services to find user location is true")
    }

    func testWorkerIsFetchingUserLocationIsSuccess() {
        // Given
        worker.fetchUserLocation { result in
            switch result {
            case .success(let location):
                self.receivedLocation = location
            case .failure(let error):
                self.receivedError = error
            }
        }
        // When
        locationServices.fetchCurrentLocationCompletion?(.success(Mock.location))
        // Then
        XCTAssertEqual(receivedLocation?.latitude, 50.257564, "worker should receive valid location")
    }

    func testWorkerIsFetchingUserLocationIsFailure() {
        // Given
        worker.fetchUserLocation { result in
            switch result {
            case .success(let location):
                self.receivedLocation = location
            case .failure(let error):
                self.receivedError = error
            }
        }
        // When
        locationServices.fetchCurrentLocationCompletion?(.failure(UnitTestError()))
        // Then
        XCTAssert(receivedError is UnitTestError, "worker should receive Error")
    }

    func testWorkerIsFetchingPlaces() {
        // Given
        worker.fetchPlaces { result in
            switch result {
            case .success(let places):
                self.receivedPlaces = places
            case .failure(let error):
                self.receivedError = error
            }
        }
        // When
        repository.fetchPlacesCompletion?(.success(Mock.places))
        // Then
        XCTAssertEqual(repository.fetchPlacesCalled, true, "calling repository to fetch places is true")
    }

    func testWorkerIsFetchingPlacesIsSuccess() {
        // Given
        worker.fetchPlaces { result in
            switch result {
            case .success(let places):
                self.receivedPlaces = places
            case .failure(let error):
                self.receivedError = error
            }
        }
        // When
        repository.fetchPlacesCompletion?(.success(Mock.places))
        // Then
        XCTAssertEqual(receivedPlaces?[1].name, "Piekarnia Michalski", "worker should receive valid place name")
    }

    func testWorkerIsFetchingPlacesIsFailure() {
        // Given
        worker.fetchPlaces { result in
            switch result {
            case .success(let places):
                self.receivedPlaces = places
            case .failure(let error):
                self.receivedError = error
            }
        }
        // When
        repository.fetchPlacesCompletion?(.failure(UnitTestError()))
        // Then
        XCTAssert(receivedError is UnitTestError, "worker should receive Error")
    }
}
