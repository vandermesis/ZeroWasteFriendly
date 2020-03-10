//
//  LangHelper.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 10/03/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

enum Lang {
    case polish
    case english
}

struct LangHelper {

    static var current: Lang {
        switch R.string.localizable.language() {
        case "pl-PL":
            return .polish
        case "en-UK":
            return .english
        default:
            return .english
        }
    }
}
