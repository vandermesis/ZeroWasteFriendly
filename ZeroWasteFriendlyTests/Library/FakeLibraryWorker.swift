//
//  FakeLibraryWorker.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 01/03/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

@testable import ZeroWasteFriendly

final class FakeLibraryWorker: LibraryWorker {

    var fetchPostsCalled: Bool?
    var fetchPostsCompletion: FetchPostsCompletion?

    func fetchPosts(completion: FetchPostsCompletion?) {
        fetchPostsCalled = true
        fetchPostsCompletion = completion
    }
}
