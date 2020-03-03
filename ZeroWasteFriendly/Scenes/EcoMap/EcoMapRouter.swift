//
//  EcoMapRouter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
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

    //TODO: Replace EcoMapCreator with destination controller or remove
    func navigateTo() {
        let EcoMapController = EcoMapCreator().getController()
        controller?.navigationController?.pushViewController(EcoMapController, animated: true)
    }
}
