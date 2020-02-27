//
//  PlaceAnnotationView.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 21/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import MapKit

final class PlaceAnnotationView: MKMarkerAnnotationView {
    override var annotation: MKAnnotation? {
        willSet {
            guard let place = newValue as? PlaceAnnotation else { return }
            canShowCallout = true
            rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            markerTintColor = place.markerTintColor
            glyphImage = place.imageName
        }
    }
}
