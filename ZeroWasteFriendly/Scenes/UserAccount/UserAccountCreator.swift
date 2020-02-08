//
//  UserAccountCreator.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

struct UserAccountCreator {

    func getController() -> UserAccountController {

        let worker = UserAccountWorkerImpl()
        let router = UserAccountRouterImpl()
        let presenter = UserAccountPresenterImpl()
        let interactor = UserAccountInteractorImpl(presenter: presenter, worker: worker, router: router)
        let controller = UserAccountController(interactor: interactor)

        presenter.controller = controller
        router.controller = controller

        return controller
    }
}
