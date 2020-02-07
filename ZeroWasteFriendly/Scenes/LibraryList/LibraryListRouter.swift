//
//  LibraryListRouter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

protocol LibraryListRouter {
    func navigateTo()
}

final class LibraryListRouterImpl {

    weak var controller: MainViewController?
}

extension LibraryListRouterImpl: LibraryListRouter {

    func navigateTo() {

    }
}
