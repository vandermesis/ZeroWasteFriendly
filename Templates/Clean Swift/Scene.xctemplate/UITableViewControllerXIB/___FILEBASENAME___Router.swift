//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol ___VARIABLE_sceneName___Router {
    func navigateTo()
}

final class ___VARIABLE_sceneName___RouterImpl {

    weak var controller: MainViewController?
}

extension ___VARIABLE_sceneName___RouterImpl: ___VARIABLE_sceneName___Router {

    func navigateTo() {
        let ___VARIABLE_sceneName___Controller = ___VARIABLE_sceneName___Creator().getController()
        controller?.navigationController?.pushViewController(___VARIABLE_sceneName___Controller, animated: true)
    }
}
