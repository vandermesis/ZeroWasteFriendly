//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

typealias Fetch___VARIABLE_sceneName___Completion = (Result<Model, Error>) -> Void

protocol ___VARIABLE_sceneName___Worker {
    func fetch___VARIABLE_sceneName___(completion: Fetch___VARIABLE_sceneName___Completion?)
}

final class ___VARIABLE_sceneName___WorkerImpl {

    private let networking: ___PROJECTNAME___Networking

    init(networking: ___PROJECTNAME___Networking) {
        self.networking = networking
    }
}

extension ___VARIABLE_sceneName___WorkerImpl: ___VARIABLE_sceneName___Worker {

    func fetch___VARIABLE_sceneName___(completion: Fetch___VARIABLE_sceneName___Completion?) {
//        networking.fetchModel { [weak self] result in
//            guard let self = self else { return }
//            switch result {
//            case .success(let apiResponse):
//                let transformedModel = apiResponse.map { Model(id: $0.someData)}
//                completion?(.success(transformedModel.sortByName()))
//            case .failure(let error):
//                completion?(.failure(error))
//            }
//        }
    }
}
