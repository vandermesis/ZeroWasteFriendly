//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

@testable import ___PROJECTNAMEASIDENTIFIER___

final class Fake___VARIABLE_sceneName___Presenter<T: ___VARIABLE_sceneName___Presentable>: FakeMainPresenter<T>, ___VARIABLE_sceneName___Presenter {

    var present___VARIABLE_sceneName___Called: Bool?
    var present___VARIABLE_sceneName___ModelCalled: [Model]?

    func present___VARIABLE_sceneName___(model: [Model]) {
        present___VARIABLE_sceneName___Called = true
        present___VARIABLE_sceneName___ModelCalled = model
    }
}
