//
//  UserAccountPresenter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol UserAccountPresenter {
    func toggleSpinner(_ state: Bool)
    func presentUserAccount()
}

final class UserAccountPresenterImpl {

    weak var controller: UserAccountPresentable?
}

extension UserAccountPresenterImpl: UserAccountPresenter {

    func toggleSpinner(_ state: Bool) {

    }

    func presentUserAccount() {

    }
}
