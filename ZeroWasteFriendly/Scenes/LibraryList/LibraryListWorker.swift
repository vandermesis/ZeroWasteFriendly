//
//  LibraryListWorker.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

typealias FetchLibraryListCompletion = (Result<Model, Error>) -> Void

protocol LibraryListWorker {
    func fetchLibraryList(completion: FetchLibraryListCompletion?)
}

final class LibraryListWorkerImpl {

//    private let networking: LibraryNetworking
//
//    init(networking: LibraryNetworking) {
//        self.networking = networking
//    }
}

extension LibraryListWorkerImpl: LibraryListWorker {

    func fetchLibraryList(completion: FetchLibraryListCompletion?) {
//        networking.fetchModel(completion: completion)
    }
}
