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
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }
}

private extension SceneDelegate {

    private func setupTabBarController() -> UIViewController {
        let tabBarController = UITabBarController()

        let activityTilesNavController = ActivityTilesCreator().getController().embedInNavigationController(title: R.string.localizable.tabBarItemAct(),
                                                                                                            image: R.image.tabBarActSun())

        tabBarController.viewControllers = [activityTilesNavController]
        return tabBarController
    }

    private func displayStartingController(controller: UIViewController, at scene: UIWindowScene) {
        window = UIWindow(frame: scene.coordinateSpace.bounds)
        window?.windowScene = scene
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
    }
}
