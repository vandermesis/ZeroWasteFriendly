//
//  LibraryListInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol LibraryListInteractor {

}

final class LibraryListInteractorImpl: LibraryListInteractor {

    private let presenter: LibraryListPresenter
    private let worker: LibraryListWorker
    private let router: LibraryListRouter

    init(presenter: LibraryListPresenter,
         worker: LibraryListWorker,
         router: LibraryListRouter) {
        self.presenter = presenter
        self.worker = worker
        self.router = router
    }
}
