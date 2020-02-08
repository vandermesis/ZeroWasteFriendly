//
//  ActivityInfoInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
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
        worker.fetchActivityInfo { [weak self] result in
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
        presenter.presentActivityInfo()
    }
}
