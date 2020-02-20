//
//  EcoMapPresenter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

protocol EcoMapPresenter: SpinnerPresenter, AlertPresenter {
    func presentEcoMap(model: [Model])
}

final class EcoMapPresenterImpl<T: EcoMapPresentable>: MainPresenter<T> {}

extension EcoMapPresenterImpl: EcoMapPresenter {

    func presentEcoMap(model: [Model]) {
        controller?.displayEcoMap()
    }
}
