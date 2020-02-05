//
//  ActivityInfoCreator.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

struct ActivityInfoCreator {

    func getController() -> ActivityInfoController {

        let worker = ActivityInfoWorkerImpl()
        let router = ActivityInfoRouterImpl()
        let presenter = ActivityInfoPresenterImpl()
        let interactor = ActivityInfoInteractorImpl(presenter: presenter, worker: worker, router: router)
        let controller = ActivityInfoController(interactor: interactor)

        presenter.controller = controller
        router.controller = controller

        return controller
    }
}
