//
//  SceneDelegate.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 14/01/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let startingController = setupTabBarController()
        displayStartingController(controller: startingController, at: windowScene)
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        CoreDataStack.shared.saveCurrentContext()
    }
}

private extension SceneDelegate {

    private func setupTabBarController() -> UIViewController {
        let tabBarController = UITabBarController()

        let activityTilesController = ActivityTilesCreator().getController(context: CoreDataStack.shared.managedContext)
        let activityTilesNavController = activityTilesController.embedInNavigationController(title: R.string.localizable.tabBarItemAct(),
                                                                                             image: R.image.tabBarActSun())
        let ecoMapController = EcoMapCreator().getController()
        let ecoMapNavController = ecoMapController.embedInNavigationController(title: R.string.localizable.tabBarItemEcoMap(), image: R.image.tabBarEarthMap())

        tabBarController.viewControllers = [ecoMapNavController, activityTilesNavController]
        return tabBarController
    }

    private func displayStartingController(controller: UIViewController, at scene: UIWindowScene) {
        window = UIWindow(frame: scene.coordinateSpace.bounds)
        window?.windowScene = scene
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
    }
}
