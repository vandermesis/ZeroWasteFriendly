//
//  ActTilesCreator.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

struct ActTilesCreator {

    func getController() -> ActTilesController {

        let worker = ActTilesWorkerImpl()
        let router = ActTilesRouterImpl()
        let presenter = ActTilesPresenterImpl()
        let interactor = ActTilesInteractorImpl(presenter: presenter, worker: worker, router: router)
        let controller = ActTilesController(interactor: interactor)

        presenter.controller = controller
        router.controller = controller

        return controller
    }
}
