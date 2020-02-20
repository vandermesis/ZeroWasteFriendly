//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import CoreData

struct ___VARIABLE_sceneName___Creator {

    func getController(context: NSManagedObjectContext? = nil) -> ___VARIABLE_sceneName___Controller {

        let networking = ___PROJECTNAME___NetworkingImpl()
        let worker = ___VARIABLE_sceneName___WorkerImpl(networking: networking)
        let router = ___VARIABLE_sceneName___RouterImpl()
        let presenter = ___VARIABLE_sceneName___PresenterImpl<___VARIABLE_sceneName___Controller>()
        let interactor = ___VARIABLE_sceneName___InteractorImpl(presenter: presenter, worker: worker, router: router)
        let controller = ___VARIABLE_sceneName___Controller(interactor: interactor)

        presenter.controller = controller
        router.controller = controller

        return controller
    }
}
