//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//
  
import UIKit

protocol ___VARIABLE_sceneName___Presentable: SpinnerPresentable & AlertPresentable {
    func display___VARIABLE_sceneName___()
}

final class ___VARIABLE_sceneName___Controller: MainViewController {

    private let interactor: ___VARIABLE_sceneName___Interactor

    init(interactor: ___VARIABLE_sceneName___Interactor) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        interactor.get___VARIABLE_sceneName___()
    }

    //TODO: Implement functionality or remove
    @IBAction private func addButtonPressed(_ sender: UIBarButtonItem) {

    }
}

extension ___VARIABLE_sceneName___Controller: ___VARIABLE_sceneName___Presentable {

    //TODO: Implement functionality or remove
    func display___VARIABLE_sceneName___() {
        
    }
}

private extension ___VARIABLE_sceneName___Controller {

    private func setupNavigationBar() {
        //TODO: Add localiable strings and uncomment
//        title = R.string.localizable.___VARIABLE_sceneName___Title()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                            target: self,
                                                            action: #selector(addButtonPressed(_:)))
    }
}
