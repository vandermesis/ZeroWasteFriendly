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
        self.coordinate = place.location.location.coordinate
        super.init()
    }

    var markerTintColor: UIColor? {
        return category.color
    }

    var imageName: UIImage? {
        return category.image
    }
}
