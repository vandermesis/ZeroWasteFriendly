//
//  EcoMapInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol EcoMapInteractor {
    func getEcoMap()
}

final class EcoMapInteractorImpl {

    private let presenter: EcoMapPresenter
    private let worker: EcoMapWorker
    private let router: EcoMapRouter

    init(presenter: EcoMapPresenter,
         worker: EcoMapWorker,
         router: EcoMapRouter) {
        self.presenter = presenter
        self.worker = worker
        self.router = router
    }
}

extension EcoMapInteractorImpl: EcoMapInteractor {

    func getEcoMap() {
        presenter.toggleSpinner(true)
        worker.fetchEcoMap { [weak self] result in
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
        presenter.presentEcoMap()
    }
}
