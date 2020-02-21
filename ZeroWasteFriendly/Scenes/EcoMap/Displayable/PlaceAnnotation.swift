//
//  PlaceAnnotation.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 21/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation
import MapKit

final class PlaceAnnotation: NSObject, MKAnnotation {

    let title: String?
    let subtitle: String?
    let category: ActivityCategory
    let coordinate: CLLocationCoordinate2D

    init(place: Place) {
        self.title = place.name
        self.subtitle = place.description
        self.category = place.category
        self.coordinate = CLLocationCoordinate2D(latitude: place.latitude,
                                                 longitude: place.longitude)
        super.init()
    }

    var markerTintColor: UIColor? {
        switch category {
        case .refuse:
            return R.color.refuse()
        case .reduce:
            return R.color.reduce()
        case .reuse:
            return R.color.reuse()
        case .recycle:
            return R.color.recycle()
        case .rot:
            return R.color.rot()
        case .repair:
            return R.color.repair()
        }
    }

    var imageName: UIImage? {
        switch category {
        case .refuse:
            return R.image.refuseButterfly()
        case .reduce:
            return R.image.reduceRooster()
        case .reuse:
            return R.image.reuseFish()
        case .recycle:
            return R.image.recycleTurtle()
        case .rot:
            return R.image.rotOwl()
        case .repair:
            return R.image.repairBird()
        }
    }
}
