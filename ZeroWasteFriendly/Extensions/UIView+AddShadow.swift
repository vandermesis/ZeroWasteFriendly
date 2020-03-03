//
//  UIView+AddShadow.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 02/03/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

extension UIView {

    func addViewShadowAndRounderCorners(view: UIView) {
        backgroundColor = UIColor.clear
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 12
        view.layer.borderColor = UIColor.clear.cgColor
        view.layer.masksToBounds = true
        layer.shadowOpacity = 0.1
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.shadowRadius = 16
        layer.shadowColor = R.color.shadowPrimary()?.cgColor
        layer.masksToBounds = false
    }
}
