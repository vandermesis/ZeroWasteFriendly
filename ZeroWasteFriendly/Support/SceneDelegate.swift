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

        #if DEBUG
        if NSClassFromString("XCTest") == nil {
            let startingController = setupTabBarController()
            displayStartingController(controller: startingController, at: windowScene)
        }
        #else
        displayStartingController(controller: UIViewController(), at: windowScene)
        #endif
    }
}

private extension SceneDelegate {

    private func setupTabBarController() -> UIViewController {
        let tabBarController = UITabBarController()

        let ecoMapController = EcoMapCreator().getController()
        let ecoMapNavController = ecoMapController.embedInNavigationController(title: R.string.localizable.tabBarItemEcoMap(), image: R.image.tabBarEarthMap())

        tabBarController.viewControllers = [ecoMapNavController]
        return tabBarController
    }

    private func displayStartingController(controller: UIViewController, at scene: UIWindowScene) {
        window = UIWindow(frame: scene.coordinateSpace.bounds)
        window?.windowScene = scene
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
    }
}
