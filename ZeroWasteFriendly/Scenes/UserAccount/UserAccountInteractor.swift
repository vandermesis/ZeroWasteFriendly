//
//  UserAccountInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
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
        worker.fetchUserAccount()
        presenter.toggleSpinner(false)
        presenter.presentUserAccount()
    }
}
