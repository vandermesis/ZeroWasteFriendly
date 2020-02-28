//
//  LibraryRepository.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 28/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation
import CloudKit

typealias FetchLibraryCompletion = (Result<[Post], Error>) -> Void

protocol LibraryRepository {
    func fetchLibrary(completion: FetchLibraryCompletion?)
}

final class LibraryRepositoryImpl: BaseCloudKitService, LibraryRepository {

    func fetchLibrary(completion: FetchLibraryCompletion?) {
        fetchPublicCloudKitDB(recordType: .recordTypeLibrary) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let records):
                let posts = self.convertRecordsToPosts(records: records)
                completion?(.success(posts))
            case .failure(let error):
                completion?(.failure(error))
            }
        }
    }
}

private extension LibraryRepositoryImpl {

    private func convertRecordsToPosts(records: [CKRecord]) -> [Post] {
        var posts = [Post]()
        records.forEach { record in
            guard
                let title = record[.recordTitle] as? String,
                let content = record[.recordContent] as? String
                else { return }
            let post = Post(title: title, content: content)
            posts.append(post)
        }
        return posts
    }
}

private extension String {

    static let recordTypeLibrary = "Library"
    static let recordTitle = "title"
    static let recordContent = "content"
}
