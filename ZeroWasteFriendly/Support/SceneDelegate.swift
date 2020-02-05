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

        let activityTilesController = UINavigationController(rootViewController: ActivityTilesCreator().getController())
        let activityStatsController = UINavigationController(rootViewController: ActivityStatsCreator().getController())
        let ecoMapController = UINavigationController(rootViewController: EcoMapCreator().getController())
        let libraryListController = UINavigationController(rootViewController: LibraryListCreator().getController())
        let userAccountController = UINavigationController(rootViewController: UserAccountSignInCreator().getController())

        activityTilesController.tabBarItem = UITabBarItem(title: "Act", image: R.image.tabBarActSun(), tag: 1)
        activityStatsController.tabBarItem = UITabBarItem(title: "Stats", image: R.image.tabBarStatsFlower(), tag: 2)
        ecoMapController.tabBarItem = UITabBarItem(title: "EcoMap", image: R.image.tabBarEarthMap(), tag: 3)
        libraryListController.tabBarItem = UITabBarItem(title: "Library", image: R.image.tabBarLibraryBook(), tag: 4)
        userAccountController.tabBarItem = UITabBarItem(title: "User", image: R.image.tabBarAccountPersons(), tag: 5)
        
        tabBarController.viewControllers = [activityTilesController,
                                            activityStatsController,
                                            ecoMapController,
                                            libraryListController,
                                            userAccountController]
        return tabBarController
    }

    private func displayStartingController(controller: UIViewController, at scene: UIWindowScene) {
        window = UIWindow(frame: scene.coordinateSpace.bounds)
        window?.windowScene = scene
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
    }
}
