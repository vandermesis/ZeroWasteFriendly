//
//  ActivityStatsController.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//
  
import UIKit

protocol ActivityStatsPresentable: MainViewController {
    func displayActivityStats()
}

final class ActivityStatsController: MainViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    private let interactor: ActivityStatsInteractor

    init(interactor: ActivityStatsInteractor) {
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
        interactor.getActivityStats()
    }

    @IBAction private func addButtonPressed(_ sender: UIBarButtonItem) {

    }
}

extension ActivityStatsController: ActivityStatsPresentable {

    func displayActivityStats() {

    }
}

extension ActivityStatsController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
//        let cell = tableView.dequeue(with: ActivityStatsTableViewCell.self, for: indexPath)
        return cell
    }
}

extension ActivityStatsController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

private extension ActivityStatsController {

    private func setupTableView() {
//        tableView.register(cellType: ActivityStatsTableViewCell.self)
    }

    private func setupNavigationBar() {
        title = R.string.localizable.activityStatsTitle()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                            target: self,
                                                            action: #selector(addButtonPressed(_:)))
    }
}
