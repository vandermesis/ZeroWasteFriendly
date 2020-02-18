//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    lazy var coreDataStack = CoreDataStack(modelName: .modelName)

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let startingController = setupTabBarController()
        displayStartingController(controller: startingController, at: windowScene)
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        coreDataStack.saveCurrentContext()
    }
}

private extension SceneDelegate {

    private func setupTabBarController() -> UIViewController {
        let tabBarController = UITabBarController()
        let controller = Creator().getController(context: coreDataStack.managedContext)
        let navController = controller.embedInNavigationController(title: R.string.localizable.tabBarItemAct(),
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

private extension String {

    static let modelName = "___PROJECTNAMEASIDENTIFIER___"
}
