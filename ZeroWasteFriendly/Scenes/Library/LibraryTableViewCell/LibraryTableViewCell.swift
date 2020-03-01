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

    override func awakeFromNib() {
        super.awakeFromNib()

        backgroundColor = UIColor.clear

        self.layer.shadowOpacity = 0.2
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowRadius = 12
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.masksToBounds = false

    }

    func setup(with post: PostDisplayable) {
        titleLabel.text = post.title
        contentLabel.text = post.content
    }
}
