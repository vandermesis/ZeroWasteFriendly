//
//  ZeroWastePlaceAnnotationView.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 21/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import MapKit

final class ZeroWastePlaceAnnotationView: MKMarkerAnnotationView {
    override var annotation: MKAnnotation? {
        willSet {
            guard let place = newValue as? ZeroWastePlaceAnnotation else { return }
            canShowCallout = true
            rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            markerTintColor = place.markerTintColor
            glyphImage = place.imageName
        }
    }
}
