//
//  ActivityTilesCreator.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

struct ActivityTilesCreator {

    func getController() -> ActivityTilesController {

        let worker = ActivityTilesWorkerImpl()
        let router = ActivityTilesRouterImpl()
        let presenter = ActivityTilesPresenterImpl()
        let interactor = ActivityTilesInteractorImpl(presenter: presenter, worker: worker, router: router)
        let controller = ActivityTilesController(interactor: interactor)

        presenter.controller = controller
        router.controller = controller

        return controller
    }
}
