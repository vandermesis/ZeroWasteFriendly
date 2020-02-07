//
//  UIViewController+NavigationController.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

extension UIViewController {

    func asNavigationController(title: String, image: UIImage?) -> UINavigationController {
        self.tabBarItem = UITabBarItem(title: title, image: image, selectedImage: image)
        return UINavigationController(rootViewController: self)
    }
}
