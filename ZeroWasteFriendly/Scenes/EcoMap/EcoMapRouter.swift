//
//  EcoMapRouter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

protocol EcoMapRouter {
    func navigateTo()
}

final class EcoMapRouterImpl {

    weak var controller: MainViewController?
}

extension EcoMapRouterImpl: EcoMapRouter {

    func navigateTo() {
//        let someController = SomeCreator().getController()
//        controller?.navigationController?.pushViewController(someController, animated: true)
    }
}
