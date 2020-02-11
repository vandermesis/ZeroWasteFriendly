//
//  BaseNetworking.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 11/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

class BaseNetworking {

    var client: APIClient

    init(client: APIClient = APIClient()) {
        self.client = client
    }
}
