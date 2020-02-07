//
//  ActivityTilesRouter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

protocol ActivityTilesRouter {
    func navigateTo()
}

final class ActivityTilesRouterImpl {

    weak var controller: MainViewController?
}

extension ActivityTilesRouterImpl: ActivityTilesRouter {

    func navigateTo() {

    }
}
