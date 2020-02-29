//
//  LibraryTableViewCell.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 28/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

final class LibraryTableViewCell: UITableViewCell {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var contentLabel: UILabel!

    func setup(with post: PostDisplayable) {
        titleLabel.text = post.title
        contentLabel.text = post.expanded ? post.content : ""
    }
}
