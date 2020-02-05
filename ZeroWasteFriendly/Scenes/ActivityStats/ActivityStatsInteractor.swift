//
//  ActivityStatsInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol ActivityStatsInteractor {

}

final class ActivityStatsInteractorImpl: ActivityStatsInteractor {

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
