//
//  UserLocationService.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 21/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

typealias FetchCurrentLocation = (Result<Location, Error>) -> Void

protocol UserLocationService {
    func fetchCurrentLocation(completion: FetchCurrentLocation?)
}

final class UserLocationServiceImpl: UserLocationService {

    func fetchCurrentLocation(completion: FetchCurrentLocation?) {
        //TODO: Add proper location service
        completion?(.success(.katowiceCoordinates))
    }
}

private extension Location {

    static let katowiceCoordinates = Location(latitude: 50.257564, longitude: 19.021145)
}
