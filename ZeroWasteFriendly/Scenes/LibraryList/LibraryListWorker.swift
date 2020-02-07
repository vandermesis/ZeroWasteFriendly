//
//  LibraryListWorker.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol LibraryListWorker {
    func fetchLibraryList()
}

final class LibraryListWorkerImpl {

//    private let networking: LibraryNetworking
//
//    init(networking: LibraryNetworking) {
//        self.networking = networking
//    }

}

extension LibraryListWorkerImpl: LibraryListWorker {

    func fetchLibraryList() {

    }
}
