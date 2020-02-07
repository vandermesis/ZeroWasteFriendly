//
//  LibraryListInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol LibraryListInteractor {
    func getLibraryList()
}

final class LibraryListInteractorImpl {

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

extension LibraryListInteractorImpl: LibraryListInteractor {

    func getLibraryList() {
        presenter.toggleSpinner(true)
        worker.fetchLibraryList()
        presenter.toggleSpinner(false)
        presenter.presentLibraryList()
    }
}
