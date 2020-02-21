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
    func presentEcoMap(model: [Model])
}

final class EcoMapPresenterImpl<T: EcoMapPresentable>: MainPresenter<T> {}

extension EcoMapPresenterImpl: EcoMapPresenter {

    func presentUserLocation(userLocation: UserLocation) {
        let coordinateRegion = MKCoordinateRegion(center: userLocation.location.coordinate,
                                                  latitudinalMeters: Constants.EcoMap.kilometerRadius,
                                                  longitudinalMeters: Constants.EcoMap.kilometerRadius)
        controller?.displayUserLocation(region: coordinateRegion)
    }

    func presentEcoMap(model: [Model]) {
        controller?.displayEcoMap()
    }
}
