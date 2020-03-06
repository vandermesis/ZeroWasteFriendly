//
//  FakeLibraryPresenter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 01/03/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

@testable import ZeroWasteFriendly

final class FakeLibraryPresenter<T: LibraryPresentable>: FakeMainPresenter<T>, LibraryPresenter {

    var presentPostsCalled: Bool?
    var presentPostsPostsCalled: [Post]?
    var expandPostCalled: Bool?
    var expandPostIdCalled: String?
    var presentAnimationWhenScrollingCalled: Bool?
    var presentAnimationWhenScrollingStateCalled: Bool?

    func presentPosts(posts: [Post]) {
        presentPostsCalled = true
        presentPostsPostsCalled = posts
    }

    func expandPost(id: String) {
        expandPostCalled = true
        expandPostIdCalled = id
    }

    func presentAnimationWhenScrolling(state: Bool) {
        presentAnimationWhenScrollingCalled = true
        presentAnimationWhenScrollingStateCalled = state
    }
}
