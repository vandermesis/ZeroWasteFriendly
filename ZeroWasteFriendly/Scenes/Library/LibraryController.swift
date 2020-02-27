//
//  LibraryController.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 27/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//
  
import UIKit

protocol LibraryPresentable: SpinnerPresentable & AlertPresentable {
    func displayInfo()
}

final class LibraryController: MainViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    private let interactor: LibraryInteractor

    init(interactor: LibraryInteractor) {
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
        interactor.getInfo()
    }
}

private extension LibraryController {

    private func setupTableView() {
        //TODO: Register custom cell
//        tableView.register(cellType: InfoTableViewCell.self)
    }

    private func setupNavigationBar() {
        title = R.string.localizable.libraryListTitle()
    }
}

extension LibraryController: LibraryPresentable {

    //TODO: Implement functionality or remove
    func displayInfo() {

    }
}

extension LibraryController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //TODO: Add proper dequeue implementation
//        let cell = tableView.dequeue(with: InfoTableViewCell.self, for: indexPath)
        return cell
    }
}

extension LibraryController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
