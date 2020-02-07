//
//  ActivityInfoPresenter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol ActivityInfoPresenter {
    func toggleSpinner(_ state: Bool)
    func presentActivityInfo()
}

final class ActivityInfoPresenterImpl {

    weak var controller: ActivityInfoPresentable?
}

extension ActivityInfoPresenterImpl: ActivityInfoPresenter {

    func toggleSpinner(_ state: Bool) {

    }

    func presentActivityInfo() {

    }
}
