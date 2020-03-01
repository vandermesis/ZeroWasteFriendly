//
//  FakeLibraryRouter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 01/03/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

@testable import ZeroWasteFriendly

final class FakeLibraryRouter: LibraryRouter {

    var navigateToCalled: Bool?

    func navigateTo() {
        navigateToCalled = true
    }
}
