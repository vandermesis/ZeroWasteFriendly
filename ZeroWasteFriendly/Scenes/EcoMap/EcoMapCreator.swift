//
//  EcoMapCreator.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

struct EcoMapCreator {

    func getController() -> EcoMapController {

        let locationService = UserLocationServiceImpl()
        let repository = PlacesRepositoryImpl()
        let worker = EcoMapWorkerImpl(repository: repository, locationService: locationService)
        let router = EcoMapRouterImpl()
        let presenter = EcoMapPresenterImpl<EcoMapController>()
        let interactor = EcoMapInteractorImpl(presenter: presenter, worker: worker, router: router)
        let controller = EcoMapController(interactor: interactor)

        presenter.controller = controller
        router.controller = controller

        return controller
    }
}
