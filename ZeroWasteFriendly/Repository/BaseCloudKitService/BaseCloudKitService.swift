//
//  BaseCloudKitService.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 24/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation
import CloudKit

typealias FetchCloudKitResponseCompletion = (Result<[CKRecord], Error>) -> Void

class BaseCloudKitService {

    private let container: CKContainer
    private let publicCloudKitDB: CKDatabase

    init() {
        self.container = CKContainer.default()
        self.publicCloudKitDB = container.publicCloudDatabase
    }

    func fetchPublicCloudKitDB(recordType: String, completion: FetchCloudKitResponseCompletion?) {
        let predicate = NSPredicate(value: true)
        let query = CKQuery(recordType: recordType, predicate: predicate)

        publicCloudKitDB.perform(query, inZoneWith: CKRecordZone.default().zoneID) { results, error in
            if let error = error {
                DispatchQueue.main.async {
                    completion?(.failure(error))
                }
            }
            guard let results = results else { return }
            DispatchQueue.main.async {
                completion?(.success(results))
            }
        }
    }
}
