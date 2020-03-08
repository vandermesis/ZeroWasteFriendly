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

    func testPresenterIsPresentingPosts() {
        // Given

        // When
        presenter.presentPosts(posts: Mock.posts)
        // Then
        XCTAssertEqual(controller.displayPostsCalled, true, "calling controller to display data is true")
        XCTAssertEqual(controller.displayPostsPostsCalled?.count, 2, "controller should receive valid amount of data")
        XCTAssertEqual(controller.displayPostsPostsCalled?.first?.title, "Gmina Zero Waste", "controller should receive valid converted data")
    }

    func testPresenterIsExpandingPost() {
        // Given
        presenter.presentPosts(posts: Mock.posts)
        // When
        presenter.expandPost(id: Mock.post2.id)
        // Then
        XCTAssertEqual(controller.displayPostsPostsCalled?[1].expanded, true, "prestenter should set post expanded property to true")
        XCTAssertEqual(controller.displayPostsPostsCalled?[1].id, "59242E4E-1F0E-A7B5-C5EE-D1678FF26F3F", "controller should expand valid post")
        XCTAssertEqual(controller.displayPostsCalled, true, "calling controller to display data is true")
        XCTAssertEqual(controller.displayPostsPostsCalled?.count, 2, "controller should receive valid amount of data")
        XCTAssertEqual(controller.displayPostsPostsCalled?.first?.title, "Gmina Zero Waste", "controller should receive valid converted data")
    }

    func testPresenterIsPresentingAnimationWhenScrollingTop() {
        // Given

        // When
        presenter.presentAnimationWhenScrolling(state: true)
        // Then
        XCTAssertEqual(controller.animateTopBarToHeightCalled, true, "calling controller to animate top bar is true")
        XCTAssertEqual(controller.animateTopBarToHeightHeightCalled, 200, "controller should receive valid bar height")
    }

    func testPresenterIsPresentingAnimationWhenScrollingNotTop() {
        // Given

        // When
        presenter.presentAnimationWhenScrolling(state: false)
        // Then
        XCTAssertEqual(controller.animateTopBarToHeightCalled, true, "calling controller to animate top bar is true")
        XCTAssertEqual(controller.animateTopBarToHeightHeightCalled, 50, "controller should receive valid bar height")
    }
}
