//
//  ActivityInfoRouter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

protocol ActivityInfoRouter {
    func navigateTo()
}

final class ActivityInfoRouterImpl {

    weak var controller: MainViewController?
}

extension ActivityInfoRouterImpl: ActivityInfoRouter {

    func navigateTo() {
//        let someController = SomeCreator().getController()
//        controller?.navigationController?.pushViewController(someController, animated: true)
    }
}
