//
//  EcoMapPresenter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit
import MapKit

protocol EcoMapPresenter: SpinnerPresenter, AlertPresenter {
    func presentUserLocation(userLocation: UserLocation)
    func presentPlaces(places: [Place])
}

final class EcoMapPresenterImpl<T: EcoMapPresentable>: MainPresenter<T> {}

extension EcoMapPresenterImpl: EcoMapPresenter {

    func presentUserLocation(userLocation: UserLocation) {
        let coordinateRegion = MKCoordinateRegion(center: userLocation.location.coordinate,
                                                  latitudinalMeters: .kilometerRadius,
                                                  longitudinalMeters: .kilometerRadius)
        controller?.displayUserLocation(region: coordinateRegion)
    }

    func presentPlaces(places: [Place]) {
        let placesAnnotation = places.map { PlaceAnnotation(place: $0) }
        controller?.displayPlaces(annotations: placesAnnotation)
    }
}

private extension CLLocationDistance {
    static let kilometerRadius: CLLocationDistance = 1000
}
