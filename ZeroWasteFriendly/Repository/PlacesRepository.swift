//
//  PlacesRepository.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 21/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation
import CoreLocation

typealias FetchPlacesCompletion = (Result<[Place], Error>) -> Void

protocol PlacesRepository {
    func fetchPlaces(completion: FetchPlacesCompletion?)
}

final class PlacesRepositoryImpl: PlacesRepository {

    func fetchPlaces(completion: FetchPlacesCompletion?) {
        //TODO: Add proper networking
        completion?(.success(Mock.places))

        CoreDataStack.shared.managedContext.
    }
}
