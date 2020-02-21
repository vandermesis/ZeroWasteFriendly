//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

protocol ___VARIABLE_sceneName___Interactor {
    func get___VARIABLE_sceneName___()
}

final class ___VARIABLE_sceneName___InteractorImpl {

    private let presenter: ___VARIABLE_sceneName___Presenter
    private let worker: ___VARIABLE_sceneName___Worker
    private let router: ___VARIABLE_sceneName___Router

    init(presenter: ___VARIABLE_sceneName___Presenter,
         worker: ___VARIABLE_sceneName___Worker,
         router: ___VARIABLE_sceneName___Router) {
        self.presenter = presenter
        self.worker = worker
        self.router = router
    }
}

extension ___VARIABLE_sceneName___InteractorImpl: ___VARIABLE_sceneName___Interactor {

    func get___VARIABLE_sceneName___() {
        presenter.toggleSpinner(true)
        worker.fetch___VARIABLE_sceneName___ { [weak self] result in
            guard let self = self else { return }
            self.presenter.toggleSpinner(false)
            switch result {
            case .success(let model):
                self.presenter.present___VARIABLE_sceneName___(model: model)
            case .failure(let error):
                self.presenter.presentError(error)
            }
        }
    }
}
