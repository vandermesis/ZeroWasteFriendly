//
//  ActivityInfoInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol ActivityInfoInteractor {

}

final class ActivityInfoInteractorImpl: ActivityInfoInteractor {

    private let presenter: ActivityInfoPresenter
    private let worker: ActivityInfoWorker
    private let router: ActivityInfoRouter

    init(presenter: ActivityInfoPresenter,
         worker: ActivityInfoWorker,
         router: ActivityInfoRouter) {
        self.presenter = presenter
        self.worker = worker
        self.router = router
    }
}
