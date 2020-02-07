//
//  EcoMapInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
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
        worker.fetchEcoMap()
        presenter.toggleSpinner(false)
        presenter.presentEcoMap()
    }
}
