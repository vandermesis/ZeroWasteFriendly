//
//  FakeEcoMapController.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

@testable import ZeroWasteFriendly

final class FakeEcoMapController: MainViewController, EcoMapPresentable {

    var displayEcoMapCalled: Bool?

    func displayEcoMap() {
        displayEcoMapCalled = true
    }
}
