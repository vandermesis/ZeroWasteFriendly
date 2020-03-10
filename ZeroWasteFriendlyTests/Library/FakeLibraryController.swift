//
//  FakeLibraryController.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 01/03/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

@testable import ZeroWasteFriendly

final class FakeLibraryController: MainViewController, LibraryPresentable {

    var displayPostsCalled: Bool?
    var displayPostsPostsCalled: [PostDisplayable]?
    var animateTopBarToHeightCalled: Bool?
    var animateCarouselHeightStateCalled: Bool?

    func displayPosts(posts: [PostDisplayable]) {
        displayPostsCalled = true
        displayPostsPostsCalled = posts
    }

    func animateCarouselHeight(state: Bool) {
        animateTopBarToHeightCalled = true
        animateCarouselHeightStateCalled = state
    }
}
