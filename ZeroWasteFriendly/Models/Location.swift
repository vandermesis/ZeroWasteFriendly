//
//  Location.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 21/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import CoreLocation

struct Location {
    
    let latitude: Double
    let longitude: Double

    var location: CLLocation {
        return CLLocation(latitude: latitude, longitude: longitude)
    }
}
