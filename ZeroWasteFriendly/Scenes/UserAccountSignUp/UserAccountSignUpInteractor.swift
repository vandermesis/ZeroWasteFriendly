//
//  UserAccountSignUpInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol UserAccountSignUpInteractor {

}

final class UserAccountSignUpInteractorImpl: UserAccountSignUpInteractor {

    private let presenter: UserAccountSignUpPresenter
    private let worker: UserAccountSignUpWorker
    private let router: UserAccountSignUpRouter

    init(presenter: UserAccountSignUpPresenter,
         worker: UserAccountSignUpWorker,
         router: UserAccountSignUpRouter) {
        self.presenter = presenter
        self.worker = worker
        self.router = router
    }
}
