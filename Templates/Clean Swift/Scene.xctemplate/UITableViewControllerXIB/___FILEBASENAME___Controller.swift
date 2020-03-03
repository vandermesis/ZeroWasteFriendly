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

    @IBOutlet private weak var tableView: UITableView!
    
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
        setupTableView()
        interactor.get___VARIABLE_sceneName___()
    }

    //TODO: Implement functionality or remove
    @IBAction private func addButtonPressed(_ sender: UIBarButtonItem) {

    }
}

private extension ___VARIABLE_sceneName___Controller {

    private func setupTableView() {
        //TODO: Register custom cell
//        tableView.register(cellType: ___VARIABLE_sceneName___TableViewCell.self)
    }

    private func setupNavigationBar() {
        //TODO: Add localiable strings and uncomment
//        title = R.string.localizable.___VARIABLE_sceneName___Title()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                            target: self,
                                                            action: #selector(addButtonPressed(_:)))
    }
}

extension ___VARIABLE_sceneName___Controller: ___VARIABLE_sceneName___Presentable {

    //TODO: Implement functionality or remove
    func display___VARIABLE_sceneName___() {
        tableView.reloadData()
    }
}

extension ___VARIABLE_sceneName___Controller: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //TODO: Add proper dequeue implementation
//        let cell = tableView.dequeue(with: ___VARIABLE_sceneName___TableViewCell.self, for: indexPath)
        return cell
    }
}

extension ___VARIABLE_sceneName___Controller: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
