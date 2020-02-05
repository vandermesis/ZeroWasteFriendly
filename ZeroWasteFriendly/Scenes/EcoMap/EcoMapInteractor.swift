//
//  EcoMapInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol EcoMapInteractor {

}

final class EcoMapInteractorImpl: EcoMapInteractor {

    private let presenter: EcoMapPresenter
    private let worker: EcoMapWorker
    private let router: EcoMapRouter

    init(presenter: EcoMapPresenter,
         worker: EcoMapWorker,
         router: EcoMapRouter) {
        self.presenter = presenter
        self.worker = worker
        self.router = router
    }
}
