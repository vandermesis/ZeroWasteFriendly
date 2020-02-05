//
//  ActivityTilesInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol ActivityTilesInteractor {

}

final class ActivityTilesInteractorImpl: ActivityTilesInteractor {

    private let presenter: ActivityTilesPresenter
    private let worker: ActivityTilesWorker
    private let router: ActivityTilesRouter

    init(presenter: ActivityTilesPresenter,
         worker: ActivityTilesWorker,
         router: ActivityTilesRouter) {
        self.presenter = presenter
        self.worker = worker
        self.router = router
    }
}
