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

        let networking = ZeroWasteFriendlyNetworkingImpl()
        let worker = ActivityTilesWorkerImpl(networking: networking)
        let router = ActivityTilesRouterImpl()
        let presenter = ActivityTilesPresenterImpl<ActivityTilesController>()
        let interactor = ActivityTilesInteractorImpl(presenter: presenter, worker: worker, router: router)
        let controller = ActivityTilesController(interactor: interactor)

        presenter.controller = controller
        router.controller = controller

        return controller
    }
}
