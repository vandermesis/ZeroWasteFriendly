//
//  EcoMapCreator.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

struct EcoMapCreator {

    func getController() -> EcoMapController {

        let worker = EcoMapWorkerImpl()
        let router = EcoMapRouterImpl()
        let presenter = EcoMapPresenterImpl()
        let interactor = EcoMapInteractorImpl(presenter: presenter, worker: worker, router: router)
        let controller = EcoMapController(interactor: interactor)

        presenter.controller = controller
        router.controller = controller

        return controller
    }
}
