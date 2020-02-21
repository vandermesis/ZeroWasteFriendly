//
//  EcoMapInteractor.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol EcoMapInteractor {
    func getUserLocation()
    func getZeroWastePlaces()
}

final class EcoMapInteractorImpl {

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

extension EcoMapInteractorImpl: EcoMapInteractor {

    func getUserLocation() {
        presenter.toggleSpinner(true)
        worker.fetchUserLocation { [weak self] result in
            guard let self = self else { return }
            self.presenter.toggleSpinner(false)
            switch result {
            case .success(let userLocation):
                self.presenter.presentUserLocation(userLocation: userLocation)
            case .failure(let error):
                self.presenter.presentError(error)
            }
        }
    }

    func getZeroWastePlaces() {
        presenter.toggleSpinner(true)
        worker.fetchZeroWastePlaces { [weak self] result in
            guard let self = self else { return }
            self.presenter.toggleSpinner(false)
            switch result {
            case .success(let places):
                self.presenter.presentZeroWastePlaces(places: places)
            case .failure(let error):
                self.presenter.presentAlert(title: R.string.localizable.alertActionTitleError(),
                                            message: error.localizedDescription)
            }
        }
    }
}
