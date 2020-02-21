//
//  UserLocationService.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 21/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import CoreLocation

typealias FetchCurrentLocation = (Result<UserLocation, Error>) -> Void

protocol UserLocationService {
    func fetchCurrentLocation(completion: FetchCurrentLocation?)
}

final class UserLocationServiceImpl: UserLocationService {

    func fetchCurrentLocation(completion: FetchCurrentLocation?) {
        completion?(.success(.katowiceCoordinates))
    }
}

private extension UserLocation {

    static let katowiceCoordinates = UserLocation(location: CLLocation(latitude: 50.257564, longitude: 19.021145))
}
