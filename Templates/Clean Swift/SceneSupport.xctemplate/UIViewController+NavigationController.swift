//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

extension UIViewController {

    func embedInNavigationController(title: String, image: UIImage?) -> UINavigationController {
        self.tabBarItem = UITabBarItem(title: title, image: image, selectedImage: image)
        return UINavigationController(rootViewController: self)
    }
}
