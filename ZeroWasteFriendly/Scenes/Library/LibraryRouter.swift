//
//  LibraryRouter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 27/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

protocol LibraryRouter {
    func navigateTo()
}

final class LibraryRouterImpl {

    weak var controller: MainViewController?
}

extension LibraryRouterImpl: LibraryRouter {

    func navigateTo() {
        let InfoController = LibraryCreator().getController()
        controller?.navigationController?.pushViewController(InfoController, animated: true)
    }
}
