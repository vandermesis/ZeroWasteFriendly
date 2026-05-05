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
        if LangHelper.current == .polish {
            repository.fetchLibrary(completion: completion)
        } else if LangHelper.current == .english {
            repository.fetchLibrary(completion: completion)
        }
    }
}
