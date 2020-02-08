//
//  ActivityStatsInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol ActivityStatsInteractor {
    func getActivityStats()
}

final class ActivityStatsInteractorImpl {

    private let presenter: ActivityStatsPresenter
    private let worker: ActivityStatsWorker
    private let router: ActivityStatsRouter

    init(presenter: ActivityStatsPresenter,
         worker: ActivityStatsWorker,
         router: ActivityStatsRouter) {
        self.presenter = presenter
        self.worker = worker
        self.router = router
    }
}

extension ActivityStatsInteractorImpl: ActivityStatsInteractor {

    func getActivityStats() {
        presenter.toggleSpinner(true)
        worker.fetchActivityStats { [weak self] result in
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
        presenter.presentActivityStats()
    }
}
