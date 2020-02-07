//
//  ActivityStatsInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
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
        worker.fetchActivityStats()
        presenter.toggleSpinner(false)
        presenter.presentActivityStats()
    }
}
