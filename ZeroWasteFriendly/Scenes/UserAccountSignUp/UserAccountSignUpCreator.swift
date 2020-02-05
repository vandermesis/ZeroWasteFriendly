//
//  UserAccountSignUpCreator.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

struct UserAccountSignUpCreator {

    func getController() -> UserAccountSignUpController {

        let worker = UserAccountSignUpWorkerImpl()
        let router = UserAccountSignUpRouterImpl()
        let presenter = UserAccountSignUpPresenterImpl()
        let interactor = UserAccountSignUpInteractorImpl(presenter: presenter, worker: worker, router: router)
        let controller = UserAccountSignUpController(interactor: interactor)

        presenter.controller = controller
        router.controller = controller

        return controller
    }
}
