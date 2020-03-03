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

    //TODO: Replace LibraryController with destination controller or remove
    func navigateTo() {
        let libraryController = LibraryCreator().getController()
        controller?.navigationController?.pushViewController(libraryController, animated: true)
    }
}
