//
//  LibraryInteractorTests.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 01/03/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import XCTest

@testable import ZeroWasteFriendly

final class LibraryInteractorTests: XCTestCase {

    var router: FakeLibraryRouter!
    var worker: FakeLibraryWorker!
    var presenter: FakeLibraryPresenter<FakeLibraryController>!
    var interactor: LibraryInteractorImpl!

    override func setUp() {
        super.setUp()
        router = FakeLibraryRouter()
        worker = FakeLibraryWorker()
        presenter = FakeLibraryPresenter()
        interactor = LibraryInteractorImpl(presenter: presenter, worker: worker, router: router)
    }

    override func tearDown() {
        router = nil
        worker = nil
        presenter = nil
        interactor = nil
        super.tearDown()
    }

    func testInteractorIsGettingPosts() {
        // Given

        // When
        interactor.getPosts()
        // Then
        XCTAssertEqual(presenter.toogleSpinnerCalled, true, "calling presenter to toogle spinner is true")
        XCTAssertEqual(presenter.toogleSpinnerStateCalled, true, "presenter toogle spinner state is true" )
        XCTAssertEqual(worker.fetchPostsCalled, true, "calling worker to fetch data is true")
    }

    func testInteractorIsGettingPostsIsSuccess() {
        // Given
        interactor.getPosts()
        // When
        worker.fetchPostsCompletion?(.success(Mock.posts))
        // Then
        XCTAssertEqual(presenter.toogleSpinnerCalled, true, "calling presenter to toogle spinner is true")
        XCTAssertEqual(presenter.toogleSpinnerStateCalled, false, "presenter toogle spinner state is false" )
        XCTAssertEqual(presenter.presentPostsCalled, true, "calling presenter to present data is true")
    }

    func testInteractorIsGettingPostsIsFailure() {
        // Given
        interactor.getPosts()
        // When
        worker.fetchPostsCompletion?(.failure(UnitTestError()))
        // Then
        XCTAssertEqual(presenter.toogleSpinnerCalled, true, "calling presenter to toogle spinner is true")
        XCTAssertEqual(presenter.toogleSpinnerStateCalled, false, "presenter toogle spinner state is false" )
        XCTAssertEqual(presenter.presentPostsCalled, nil, "calling presenter to present data is nil")
        XCTAssertEqual(presenter.presentErrorCalled, true, "calling presenter to present error it true")
    }

    func testInteractorDidSelectPost() {
        // Given

        // When
        interactor.didSelectPost(id: Mock.post1.id)
        // Then
        XCTAssertEqual(presenter.expandPostCalled, true, "calling presenter to expand post is true")
        XCTAssertEqual(presenter.expandPostIdCalled, "442734E6-F4AD-C80E-A34F-E625B298EB12", "presenter expanding post with valid id")
    }
}
