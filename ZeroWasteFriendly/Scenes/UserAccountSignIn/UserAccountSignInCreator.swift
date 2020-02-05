//
//  UserAccountSignInCreator.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

struct UserAccountSignInCreator {

    func getController() -> UserAccountSignInController {

        let worker = UserAccountSignInWorkerImpl()
        let router = UserAccountSignInRouterImpl()
        let presenter = UserAccountSignInPresenterImpl()
        let interactor = UserAccountSignInInteractorImpl(presenter: presenter, worker: worker, router: router)
        let controller = UserAccountSignInController(interactor: interactor)

        presenter.controller = controller
        router.controller = controller

        return controller
    }
}
