//
//  LibraryController.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 27/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//
  
import UIKit

protocol LibraryPresentable: SpinnerPresentable & AlertPresentable {
    func displayPosts(posts: [PostDisplayable])
    func animateTopBarToHeight(height: CGFloat)
}

final class LibraryController: MainViewController {

    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var topBarHeightConstraint: NSLayoutConstraint!
    @IBOutlet private weak var topBar: UIView!

    private var postsDataSource = [PostDisplayable]()

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
        interactor.getPosts()
    }
}

private extension LibraryController {

    private func setupTableView() {
        tableView.register(cellType: LibraryTableViewCell.self)
        tableView.contentInset.top = 7
        tableView.contentInset.bottom = 7
    }

    private func setupNavigationBar() {
        title = R.string.localizable.libraryListTitle()
    }
}

extension LibraryController: LibraryPresentable {

    func displayPosts(posts: [PostDisplayable]) {
        postsDataSource = posts
        tableView.reloadData()
    }

    func animateTopBarToHeight(height: CGFloat) {
        UIView.animate(withDuration: 0.25) {
            self.topBarHeightConstraint.constant = height
            self.view.layoutSubviews()
        }
    }
}

extension LibraryController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postsDataSource.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(with: LibraryTableViewCell.self, for: indexPath)
        cell.setup(with: postsDataSource[indexPath.row])
        return cell
    }
}

extension LibraryController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedPostID = postsDataSource[indexPath.row].id
        interactor.didSelectPost(id: selectedPostID)
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        postsDataSource[indexPath.row].expanded ? UITableView.automaticDimension : CGFloat(Constants.Library.defaultRowHeight)
    }
}

extension LibraryController: UIScrollViewDelegate {

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let contentIsOnTop = tableView.contentOffset.y > 0
        interactor.animateTopBarWhenScrolling(state: contentIsOnTop)
    }
}
