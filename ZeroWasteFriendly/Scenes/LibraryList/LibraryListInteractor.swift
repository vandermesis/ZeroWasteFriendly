//
//  LibraryListInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
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
        worker.fetchLibraryList { [weak self] result in
            guard let self = self else { return }
            self.presenter.toggleSpinner(true)
            switch result {
            case .success:
                self.presenter.toggleSpinner(false)
            case .failure(let error):
                self.presenter.presentAlert(title: "Error",
                                            message: error.localizedDescription)
            }
        }
        presenter.presentLibraryList()
    }
}
