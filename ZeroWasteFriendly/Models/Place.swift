//
//  Place.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 21/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

enum ActivityCategory: String {
    case refuse
    case reduce
    case reuse
    case recycle
    case rot
    case repair

    var color: UIColor? {
        switch self {
        case .refuse:
            return R.color.refuse()
        case .reduce:
            return R.color.reduce()
        case .reuse:
            return R.color.reuse()
        case .recycle:
            return R.color.recycle()
        case .rot:
            return R.color.rot()
        case .repair:
            return R.color.repair()
        }
    }

    var image: UIImage? {
        switch self {
        case .refuse:
            return R.image.refuseButterfly()
        case .reduce:
            return R.image.reduceRooster()
        case .reuse:
            return R.image.reuseFish()
        case .recycle:
            return R.image.recycleTurtle()
        case .rot:
            return R.image.rotOwl()
        case .repair:
            return R.image.repairBird()
        }
    }
}

struct Place {

    let name: String
    let description: String
    let category: ActivityCategory
    let location: Location
}
