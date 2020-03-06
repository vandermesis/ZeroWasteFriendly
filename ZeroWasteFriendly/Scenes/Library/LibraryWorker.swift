//
//  LibraryWorker.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 27/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

typealias FetchPostsCompletion = (Result<[Post], Error>) -> Void

protocol LibraryWorker {
    func fetchPosts(completion: FetchPostsCompletion?)
}

final class LibraryWorkerImpl {

    private let repository: LibraryRepository

    init(repository: LibraryRepository) {
        self.repository = repository
    }
}

extension LibraryWorkerImpl: LibraryWorker {

    func fetchPosts(completion: FetchPostsCompletion?) {
        if R.string.localizable.language() == "Polish" {
            repository.fetchLibrary(completion: completion)
        } else if R.string.localizable.language() == "English" {
            repository.fetchLibrary(completion: completion)
        }
    }
}
