//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

class BaseNetworking {

    var client: APIClient

    init(client: APIClient = APIClient()) {
        self.client = client
    }
}
