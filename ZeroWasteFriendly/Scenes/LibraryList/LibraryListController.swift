//
//  LibraryListController.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//
  
import UIKit

protocol LibraryListPresentable: MainViewController {
    func displayLibraryList()
}

final class LibraryListController: MainViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    private let interactor: LibraryListInteractor

    init(interactor: LibraryListInteractor) {
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
        interactor.getLibraryList()
    }

    @IBAction private func addButtonPressed(_ sender: UIBarButtonItem) {

    }
}

extension LibraryListController: LibraryListPresentable {

    func displayLibraryList() {

    }
}

extension LibraryListController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
//        let cell = tableView.dequeue(with: LibraryListTableViewCell.self, for: indexPath)
        return cell
    }
}

extension LibraryListController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

private extension LibraryListController {

    private func setupTableView() {
//        tableView.register(cellType: LibraryListTableViewCell.self)
    }

    private func setupNavigationBar() {
        title = R.string.localizable.libraryListTitle()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                            target: self,
                                                            action: #selector(addButtonPressed(_:)))
    }
}
