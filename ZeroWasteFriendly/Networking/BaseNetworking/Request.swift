//
//  Request.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 11/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

enum HTTPMethod: String {
    case get, post, put, delete
}

struct Request<T: Codable> {

    typealias CodableAPICompletion = (Result<T, Error>) -> Void

    let url: String
    let method: String
    let parameters: [String: Any]?
    let completion: CodableAPICompletion?

    init(url: String,
         method: HTTPMethod,
         parameters: [String: Any]? = nil,
         completion: CodableAPICompletion? = nil) {
        self.url = url
        self.method = method.rawValue
        self.parameters = parameters
        self.completion = { result in
            DispatchQueue.main.async {
                completion?(result)
            }
        }
    }
}
