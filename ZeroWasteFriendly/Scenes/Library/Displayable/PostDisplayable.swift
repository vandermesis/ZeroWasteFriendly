//
//  PostDisplayable.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 29/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

final class PostDisplayable {
    let id: String
    let title: String
    let content: String
    var expanded: Bool

    init(object: Post, expanded: Bool) {
        self.id = object.id
        self.title = object.title
        self.content = object.content
        self.expanded = expanded
    }
}
