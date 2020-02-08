//
//  FakeActivityInfoController.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

@testable import ZeroWasteFriendly

final class FakeActivityInfoController: MainViewController, ActivityInfoPresentable {

    var displayActivityInfoCalled: Bool?

    func displayActivityInfo() {
        displayActivityInfoCalled = true
    }
}
