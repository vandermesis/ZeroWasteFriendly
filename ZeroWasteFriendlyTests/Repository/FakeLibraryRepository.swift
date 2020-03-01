//
//  FakeLibraryRepository.swift
//  ZeroWasteFriendlyTests
//
//  Created by Marek Skrzelowski on 01/03/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

@testable import ZeroWasteFriendly

final class FakeLibraryRepository: LibraryRepository {

    var fetchLibraryCalled: Bool?
    var fetchLibraryCompletion: FetchLibraryCompletion?

    func fetchLibrary(completion: FetchLibraryCompletion?) {
        fetchLibraryCalled = true
        fetchLibraryCompletion = completion
    }
}
