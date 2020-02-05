//
//  ActTilesInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//


import Foundation

protocol ActTilesInteractor {

}

final class ActTilesInteractorImpl: ActTilesInteractor {

    private let presenter: ActTilesPresenter
    private let worker: ActTilesWorker
    private let router: ActTilesRouter

    init(presenter: ActTilesPresenter,
         worker: ActTilesWorker,
         router: ActTilesRouter) {
        self.presenter = presenter
        self.worker = worker
        self.router = router
    }
}
