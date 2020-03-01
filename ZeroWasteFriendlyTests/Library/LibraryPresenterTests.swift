//
//  LibraryPresenterTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 01/03/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import XCTest

@testable import ZeroWasteFriendly

final class LibraryPresenterTests: XCTestCase {

    var presenter: LibraryPresenterImpl<FakeLibraryController>!
    var controller: FakeLibraryController!

    override func setUp() {
        super.setUp()
        controller = FakeLibraryController()
        presenter = LibraryPresenterImpl()
        presenter.controller = controller
    }

    override func tearDown() {
        controller = nil
        presenter = nil
        super.tearDown()
    }

    func testControllerIsDisplayingPosts() {
        // Given

        // When
        presenter.presentPosts(posts: Mock.posts)
        // Then
        XCTAssertEqual(controller.displayPostsCalled, true, "calling controller to display data is true")
    }
}
