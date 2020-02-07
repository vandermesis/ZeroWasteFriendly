//
//  ActivityTilesPresenter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol ActivityTilesPresenter {
    func toggleSpinner(_ state: Bool)
    func presentActivityTiles()
}

final class ActivityTilesPresenterImpl {

    weak var controller: ActivityTilesPresentable?
}

extension ActivityTilesPresenterImpl: ActivityTilesPresenter {

    func toggleSpinner(_ state: Bool) {

    }

    func presentActivityTiles() {

    }
}
