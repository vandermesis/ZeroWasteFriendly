//
//  UserAccountInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol UserAccountInteractor {
    func getUserAccount()
}

final class UserAccountInteractorImpl {

    private let presenter: UserAccountPresenter
    private let worker: UserAccountWorker
    private let router: UserAccountRouter

    init(presenter: UserAccountPresenter,
         worker: UserAccountWorker,
         router: UserAccountRouter) {
        self.presenter = presenter
        self.worker = worker
        self.router = router
    }
}

extension UserAccountInteractorImpl: UserAccountInteractor {

    func getUserAccount() {
        presenter.toggleSpinner(true)
        worker.fetchUserAccount { [weak self] result in
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
        presenter.presentUserAccount()
    }
}
