//
//  PlacesRepository.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 21/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation
import CloudKit

typealias FetchPlacesCompletion = (Result<[Place], Error>) -> Void

protocol PlacesRepository {
    func fetchPlaces(completion: FetchPlacesCompletion?)
}

final class PlacesRepositoryImpl: BaseCloudKitService, PlacesRepository {

    func fetchPlaces(completion: FetchPlacesCompletion?) {
        fetchPublicCloudKitDB(recordType: .recordEcoPlaces) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let records):
                let places = self.convertRecordsToPlaces(records: records)
                completion?(.success(places))
            case .failure(let error):
                completion?(.failure(error))
            }
        }
    }
}

private extension PlacesRepositoryImpl {

    private func convertRecordsToPlaces(records: [CKRecord]) -> [Place] {
        records.map { record in
            guard
                let name = record[.recordName] as? String,
                let description = record[.recordDescription] as? String,
                let category = record[.recordCategory] as? String,
                let activityCategory = ActivityCategory(rawValue: category),
                let location = record[.recordLocation] as? CLLocation
                else { fatalError("Error unwraping CloudKit records") }
            let placeLocation = Location(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
            return Place(name: name, description: description, category: activityCategory, location: placeLocation)
        }
    }
}

private extension String {

    static let recordEcoPlaces = "EcoPlace"
    static let recordName = "name"
    static let recordDescription = "description"
    static let recordCategory = "category"
    static let recordLocation = "location"
}
