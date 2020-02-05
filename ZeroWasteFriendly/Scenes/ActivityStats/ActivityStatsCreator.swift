//
//  ActivityStatsCreator.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

struct ActivityStatsCreator {

    func getController() -> ActivityStatsController {

        let worker = ActivityStatsWorkerImpl()
        let router = ActivityStatsRouterImpl()
        let presenter = ActivityStatsPresenterImpl()
        let interactor = ActivityStatsInteractorImpl(presenter: presenter, worker: worker, router: router)
        let controller = ActivityStatsController(interactor: interactor)

        presenter.controller = controller
        router.controller = controller

        return controller
    }
}
