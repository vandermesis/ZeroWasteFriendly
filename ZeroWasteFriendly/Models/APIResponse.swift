//
//  APIResponse.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 18/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

struct APIResponse: Codable, Equatable {

    let data: [Records]

    struct Records: Codable, Equatable {

        let id: String
        let name: String
    }
}
