//
//  LibraryListCreator.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

struct LibraryListCreator {

    func getController() -> LibraryListController {

        let worker = LibraryListWorkerImpl()
        let router = LibraryListRouterImpl()
        let presenter = LibraryListPresenterImpl()
        let interactor = LibraryListInteractorImpl(presenter: presenter, worker: worker, router: router)
        let controller = LibraryListController(interactor: interactor)

        presenter.controller = controller
        router.controller = controller

        return controller
    }
}
