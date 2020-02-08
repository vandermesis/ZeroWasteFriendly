//
//  FakeActivityInfoRouter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

@testable import ZeroWasteFriendly

final class FakeActivityInfoRouter: ActivityInfoRouter {

    var navigateToCalled: Bool?

    func navigateTo() {
        navigateToCalled = true
    }
}
