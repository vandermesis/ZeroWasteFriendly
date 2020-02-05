//
//  UserAccountSignInInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol UserAccountSignInInteractor {

}

final class UserAccountSignInInteractorImpl: UserAccountSignInInteractor {

    private let presenter: UserAccountSignInPresenter
    private let worker: UserAccountSignInWorker
    private let router: UserAccountSignInRouter

    init(presenter: UserAccountSignInPresenter,
         worker: UserAccountSignInWorker,
         router: UserAccountSignInRouter) {
        self.presenter = presenter
        self.worker = worker
        self.router = router
    }
}
