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
    @IBOutlet private weak var contentTopConstraint: NSLayoutConstraint!
    @IBOutlet private weak var indicatorImage: UIImageView!

    func setup(with post: PostDisplayable) {
        titleLabel.text = post.title
        contentLabel.text = post.content
        addViewShadowAndRounderCorners(view: shadowView)
        toggleConstraints(state: post.expanded)
        toggleIndicator(state: post.expanded)
    }
}

private extension LibraryTableViewCell {

    private func toggleConstraints(state: Bool) {
        contentTopConstraint.constant = state ? 16.3 : 10
    }

    private func toggleIndicator(state: Bool) {
        indicatorImage.image = state ? R.image.iconsChevron() : R.image.iconsChevron90()
    }
}
