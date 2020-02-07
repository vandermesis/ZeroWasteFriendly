//
//  EcoMapPresenter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol EcoMapPresenter {
    func toggleSpinner(_ state: Bool)
    func presentEcoMap()
}

final class EcoMapPresenterImpl {

    weak var controller: EcoMapPresentable?
}

extension EcoMapPresenterImpl: EcoMapPresenter {

    func toggleSpinner(_ state: Bool) {

    }

    func presentEcoMap() {

    }
}
