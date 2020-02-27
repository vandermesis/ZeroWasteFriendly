//
//  FakeLocationService.swift
//  ZeroWasteFriendlyTests
//
//  Created by Marek Skrzelowski on 26/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

@testable import ZeroWasteFriendly

final class FakeLocationService: UserLocationService {

    var fetchCurrentLocationCalled: Bool?
    var fetchCurrentLocationCompletion: FetchCurrentLocation?

    func fetchCurrentLocation(completion: FetchCurrentLocation?) {
        fetchCurrentLocationCalled = true
        fetchCurrentLocationCompletion = completion
    }
}
