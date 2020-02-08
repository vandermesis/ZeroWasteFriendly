//
//  ActivityStatsRouter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

protocol ActivityStatsRouter {
    func navigateTo()
}

final class ActivityStatsRouterImpl {

    weak var controller: MainViewController?
}

extension ActivityStatsRouterImpl: ActivityStatsRouter {

    func navigateTo() {
//        let someController = SomeCreator().getController()
//        controller?.navigationController?.pushViewController(someController, animated: true)
    }
}
