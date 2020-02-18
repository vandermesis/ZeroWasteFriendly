//
//  ActivityTilesPresenter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

protocol ActivityTilesPresenter: SpinnerPresenter, AlertPresenter {
    func presentActivityTiles(model: [Model])
}

final class ActivityTilesPresenterImpl<T: ActivityTilesPresentable>: MainPresenter<T> {}

extension ActivityTilesPresenterImpl: ActivityTilesPresenter {

    func presentActivityTiles(model: [Model]) {
        controller?.displayActivityTiles()
    }
}
