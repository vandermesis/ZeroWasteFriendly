//
//  ZeroWasteFriendlyNetworking.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

typealias FetchResponseCompletion = (Result<APIResponse, Error>) -> Void

protocol ZeroWasteFriendlyNetworking {
    func fetchData(completion: FetchResponseCompletion?)
}

final class ZeroWasteFriendlyNetworkingImpl: BaseNetworking, ZeroWasteFriendlyNetworking {

    func fetchData(completion: FetchResponseCompletion?) {
        completion?(.success(APIResponse(data: [APIResponse.Records(id: "id", name: "name")])))
    }
}
