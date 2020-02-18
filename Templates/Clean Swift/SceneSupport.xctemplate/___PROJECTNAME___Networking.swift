//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

typealias FetchResponseCompletion = (Result<APIResponse, Error>) -> Void

protocol ___PROJECTNAMEASIDENTIFIER___Networking {
    func fetchData(completion: FetchResponseCompletion?)
}

final class ___PROJECTNAMEASIDENTIFIER___NetworkingImpl: BaseNetworking, ___PROJECTNAMEASIDENTIFIER___Networking {

    func fetchData(completion: FetchResponseCompletion?) {
        completion?(.success(APIResponse(data: [APIResponse.Records(id: "id", name: "name")])))
    }
}
