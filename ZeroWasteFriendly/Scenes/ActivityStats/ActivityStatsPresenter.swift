//
//  ActivityStatsPresenter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol ActivityStatsPresenter {
    func toggleSpinner(_ state: Bool)
    func presentActivityStats()
}

final class ActivityStatsPresenterImpl {

    weak var controller: ActivityStatsPresentable?
}

extension ActivityStatsPresenterImpl: ActivityStatsPresenter {

    func toggleSpinner(_ state: Bool) {

    }

    func presentActivityStats() {

    }
}
