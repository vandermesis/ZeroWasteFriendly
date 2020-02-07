//
//  UserAccountRouter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

protocol UserAccountRouter {
    func navigateTo()
}

final class UserAccountRouterImpl {

    weak var controller: MainViewController?
}

extension UserAccountRouterImpl: UserAccountRouter {

    func navigateTo() {

    }
}
