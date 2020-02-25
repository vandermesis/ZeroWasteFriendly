//
//  FakeEcoMapController.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import MapKit

@testable import ZeroWasteFriendly

final class FakeEcoMapController: MainViewController, EcoMapPresentable {

    var displayUserLocationCalled: Bool?
    var displayUserLocationRegionCalled: MKCoordinateRegion?
    var displayPlacesCalled: Bool?
    var displayPlacesAnnotationsCalled: [MKAnnotation]?

    func displayUserLocation(region: MKCoordinateRegion) {
        displayUserLocationCalled = true
        displayUserLocationRegionCalled = region
    }
    func displayPlaces(annotations: [MKAnnotation]) {
        displayPlacesCalled = true
        displayPlacesAnnotationsCalled = annotations
    }
}
