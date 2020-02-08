//
//  UserAccountWorker.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

typealias FetchUserAccountCompletion = (Result<Model, Error>) -> Void

protocol UserAccountWorker {
    func fetchUserAccount(completion: FetchUserAccountCompletion?)
}

final class UserAccountWorkerImpl {

//    private let networking: UserRepository
//
//    init(networking: UserRepository) {
//        self.networking = networking
//    }
}

extension UserAccountWorkerImpl: UserAccountWorker {

    func fetchUserAccount(completion: FetchUserAccountCompletion?) {
//        networking.fetchModel(completion: completion)
    }
}
