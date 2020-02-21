//
//  ZeroWastePlace.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 21/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

enum ZeroWasteCategory: String {
    case refuse, reduce, reuse, recycle, rot, repair
}

struct ZeroWastePlace {

    let name: String
    let description: String
    let category: ZeroWasteCategory
    let latitude: Double
    let longitude: Double
}
