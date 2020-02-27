//
//  InfoCreator.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 27/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

struct LibraryCreator {

    func getController() -> LibraryController {

        let networking = ZeroWasteFriendlyNetworkingImpl()
        let worker = LibraryWorkerImpl(networking: networking)
        let router = LibraryRouterImpl()
        let presenter = LibraryPresenterImpl<LibraryController>()
        let interactor = LibraryInteractorImpl(presenter: presenter, worker: worker, router: router)
        let controller = LibraryController(interactor: interactor)

        presenter.controller = controller
        router.controller = controller

        return controller
    }
}
