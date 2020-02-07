//
//  ActivityInfoInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol ActivityInfoInteractor {
    func getActivityInfo()
}

final class ActivityInfoInteractorImpl {

    private let presenter: ActivityInfoPresenter
    private let worker: ActivityInfoWorker
    private let router: ActivityInfoRouter

    init(presenter: ActivityInfoPresenter,
         worker: ActivityInfoWorker,
         router: ActivityInfoRouter) {
        self.presenter = presenter
        self.worker = worker
        self.router = router
    }
}

extension ActivityInfoInteractorImpl: ActivityInfoInteractor {

    func getActivityInfo() {
        presenter.toggleSpinner(true)
        worker.fetchActivityInfo()
        presenter.toggleSpinner(false)
        presenter.presentActivityInfo()
    }
}
