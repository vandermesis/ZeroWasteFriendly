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

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.

        // Save changes in the application's managed object context when the application transitions to the background.
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }
}

private extension SceneDelegate {

    private func setupTabBarController() -> UIViewController {
        let tabBarController = UITabBarController()

        let activityTilesNavController = ActivityTilesCreator().getController().embedInNavigationController(title: R.string.localizable.tabBarItemAct(),
                                                                                                            image: R.image.tabBarActSun())
        let activityStatsNavController = ActivityStatsCreator().getController().embedInNavigationController(title: R.string.localizable.tabBarItemStats(),
                                                                                                            image: R.image.tabBarStatsFlower())
        let ecoMapNavController = EcoMapCreator().getController().embedInNavigationController(title: R.string.localizable.tabBarItemEcoMap(),
                                                                                              image: R.image.tabBarEarthMap())
        let libraryListNavController = LibraryListCreator().getController().embedInNavigationController(title: R.string.localizable.tabBarItemLibrary(),
                                                                                                        image: R.image.tabBarLibraryBook())
        let userAccountNavController = UserAccountCreator().getController().embedInNavigationController(title: R.string.localizable.tabBarItemAccount(),
                                                                                                        image: R.image.tabBarAccountPersons())

        tabBarController.viewControllers = [activityTilesNavController,
                                            activityStatsNavController,
                                            ecoMapNavController,
                                            libraryListNavController,
                                            userAccountNavController]
        return tabBarController
    }

    private func displayStartingController(controller: UIViewController, at scene: UIWindowScene) {
        window = UIWindow(frame: scene.coordinateSpace.bounds)
        window?.windowScene = scene
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
    }
}
