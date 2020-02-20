//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol ___VARIABLE_sceneName___Presenter: SpinnerPresenter, AlertPresenter {
    func present___VARIABLE_sceneName___(model: [Model])
}

final class ___VARIABLE_sceneName___PresenterImpl<T: ___VARIABLE_sceneName___Presentable>: MainPresenter<T> {}

extension ___VARIABLE_sceneName___PresenterImpl: ___VARIABLE_sceneName___Presenter {

    func present___VARIABLE_sceneName___(model: [Model]) {
        controller?.display___VARIABLE_sceneName___()
    }
}
