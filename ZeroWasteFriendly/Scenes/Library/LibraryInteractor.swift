//
//  LibraryInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 27/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol LibraryInteractor {
    func getInfo()
}

final class LibraryInteractorImpl {

    private let presenter: LibraryPresenter
    private let worker: LibraryWorker
    private let router: LibraryRouter

    init(presenter: LibraryPresenter,
         worker: LibraryWorker,
         router: LibraryRouter) {
        self.presenter = presenter
        self.worker = worker
        self.router = router
    }
}

extension LibraryInteractorImpl: LibraryInteractor {

    func getInfo() {
        presenter.toggleSpinner(true)
        worker.fetchInfo { [weak self] result in
            guard let self = self else { return }
            self.presenter.toggleSpinner(false)
            switch result {
            case .success(let model):
                self.presenter.presentInfo(model: model)
            case .failure(let error):
                self.presenter.presentError(error)
            }
        }
    }
}
