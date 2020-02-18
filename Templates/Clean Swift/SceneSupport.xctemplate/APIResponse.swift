//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

struct APIResponse: Codable, Equatable {

    let data: [Records]

    struct Records: Codable, Equatable {

        let id: String
        let name: String
    }
}
