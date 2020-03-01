//
//  LibraryWorkerTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 01/03/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import XCTest

@testable import ZeroWasteFriendly

final class LibraryWorkerTests: XCTestCase {

    var repository: FakeLibraryRepository!
    var worker: LibraryWorkerImpl!
    var receivedPosts: [Post]?
    var receivedError: Error?

    override func setUp() {
        super.setUp()
        repository = FakeLibraryRepository()
        worker = LibraryWorkerImpl(repository: repository)
    }

    override func tearDown() {
        repository = nil
        worker = nil
        receivedPosts = nil
        receivedError = nil
        super.tearDown()
    }

    func testWorkerIsFetchingPosts() {
        // Given
        worker.fetchPosts { result in
            switch result {
            case .success(let posts):
                self.receivedPosts = posts
            case .failure(let error):
                self.receivedError = error
            }
        }
        // When
        repository.fetchLibraryCompletion?(.success(Mock.posts))
        // Then
        XCTAssertEqual(repository.fetchLibraryCalled, true, "calling repository to fetch library posts is true")
    }

    func testWorkerIsFetchingPlacesIsSuccess() {
        // Given
        worker.fetchPosts { result in
            switch result {
            case .success(let posts):
                self.receivedPosts = posts
            case .failure(let error):
                self.receivedError = error
            }
        }
        // When
        repository.fetchLibraryCompletion?(.success(Mock.posts))
        // Then
        XCTAssertEqual(receivedPosts?[1].title, "Wrzucam. Nie wyrzucam.", "worker should receive valid post title")
    }

    func testWorkerIsFetchingPlacesIsFailure() {
        // Given
        worker.fetchPosts { result in
            switch result {
            case .success(let posts):
                self.receivedPosts = posts
            case .failure(let error):
                self.receivedError = error
            }
        }
        // When
        repository.fetchLibraryCompletion?(.failure(UnitTestError()))
        // Then
        XCTAssert(receivedError is UnitTestError, "worker should receive Error")
    }
}
