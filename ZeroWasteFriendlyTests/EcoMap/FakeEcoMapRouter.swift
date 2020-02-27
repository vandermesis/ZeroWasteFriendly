//
//  FakeEcoMapRouter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

@testable import ZeroWasteFriendly

final class FakeEcoMapRouter: EcoMapRouter {

    var navigateToCalled: Bool?

    func navigateTo() {
        navigateToCalled = true
    }
}
