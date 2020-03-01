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
    @IBOutlet private weak var shadowView: UIView!

    func setup(with post: PostDisplayable) {
        titleLabel.text = post.title
        contentLabel.text = post.content
        addCellShadow()
    }
}

private extension LibraryTableViewCell {

    private func addCellShadow() {
        backgroundColor = UIColor.clear
        self.shadowView.layer.borderWidth = 1
        self.shadowView.layer.cornerRadius = 12
        self.shadowView.layer.borderColor = UIColor.clear.cgColor
        self.shadowView.layer.masksToBounds = true
        self.layer.shadowOpacity = 0.1
        self.layer.shadowOffset = CGSize(width: 0, height: 4)
        self.layer.shadowRadius = 16
        self.layer.shadowColor = R.color.shadowPrimary()?.cgColor
        self.layer.masksToBounds = false
    }
}
