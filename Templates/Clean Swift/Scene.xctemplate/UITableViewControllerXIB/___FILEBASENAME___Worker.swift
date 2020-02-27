//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

typealias Fetch___VARIABLE_sceneName___Completion = (Result<[Model], Error>) -> Void

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
        networking.fetchData { result in
            switch result {
            case .success(let apiResponse):
                let transformedModel = apiResponse.data.map { Model(id: $0.id, name: $0.name)}
                completion?(.success(transformedModel))
            case .failure(let error):
                completion?(.failure(error))
            }
        }
    }
}
