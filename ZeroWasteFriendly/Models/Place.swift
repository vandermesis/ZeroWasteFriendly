//
//  Place.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 21/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

enum ActivityCategory: String {
    case refuse
    case reduce
    case reuse
    case recycle
    case rot
    case repair
}

struct Place {

    let name: String
    let description: String
    let category: ActivityCategory
    let location: Location
}
