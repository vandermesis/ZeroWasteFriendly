//
//  ActivityTilesInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol ActivityTilesInteractor {
    func getActivityTiles()
}

final class ActivityTilesInteractorImpl {

    private let presenter: ActivityTilesPresenter
    private let worker: ActivityTilesWorker
    private let router: ActivityTilesRouter

    init(presenter: ActivityTilesPresenter,
         worker: ActivityTilesWorker,
         router: ActivityTilesRouter) {
        self.presenter = presenter
        self.worker = worker
        self.router = router
    }
}

extension ActivityTilesInteractorImpl: ActivityTilesInteractor {
    
    func getActivityTiles() {
        presenter.toggleSpinner(true)
        worker.fetchActivityTiles { [weak self] result in
            guard let self = self else { return }
            self.presenter.toggleSpinner(true)
            switch result {
            case .success:
                self.presenter.toggleSpinner(false)
            case .failure(let error):
                self.presenter.presentAlert(title: R.string.localizable.alertActionTitleError(),
                                            message: error.localizedDescription)
            }
        }
        presenter.presentActivityTiles()
    }
}
