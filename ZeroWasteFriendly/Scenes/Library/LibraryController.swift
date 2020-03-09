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
    func animateCarouselHeight(height: CGFloat)
}

final class LibraryController: MainViewController {

    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var carouselCollectionView: UICollectionView!
    @IBOutlet private weak var collectionViewHeight: NSLayoutConstraint!

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
        registerLibraryCarouselCell()
        interactor.getPosts()
    }

    override func viewDidLayoutSubviews() {
        setupCarouselCollectionView()
    }
}

private extension LibraryController {

    private func setupTableView() {
        tableView.register(cellType: LibraryPostCell.self)
        tableView.contentInset.bottom = 15
    }

    private func setupNavigationBar() {
        title = R.string.localizable.libraryListTitle()
    }

    private func registerLibraryCarouselCell() {
        carouselCollectionView.register(cellType: LibraryCarouselCell.self)
    }

    private func setupCarouselCollectionView() {
        let viewWidth = view.frame.width
        let flowLayout = ZoomAndSnapFlowLayout(viewWidth: viewWidth)
        carouselCollectionView.collectionViewLayout = flowLayout
        carouselCollectionView.contentInsetAdjustmentBehavior = .always
        carouselCollectionView.decelerationRate = .fast
    }
}

extension LibraryController: LibraryPresentable {

    func displayPosts(posts: [PostDisplayable]) {
        postsDataSource = posts
        tableView.reloadData()
    }

    func animateCarouselHeight(height: CGFloat) {
        UIView.animate(withDuration: Constants.Library.quarterSecond) {
            self.collectionViewHeight.constant = height
            self.view.layoutSubviews()
        }
    }
}

extension LibraryController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postsDataSource.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(with: LibraryPostCell.self, for: indexPath)
        cell.setup(with: postsDataSource[indexPath.row])
        return cell
    }
}

extension LibraryController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedPostID = postsDataSource[indexPath.row].id
        interactor.handlePostSelect(id: selectedPostID)
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        postsDataSource[indexPath.row].expanded ? UITableView.automaticDimension : CGFloat(Constants.Library.defaultRowHeight)
    }
}

extension LibraryController: UIScrollViewDelegate {

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let topPosition = tableView.contentOffset.y <= 0
        interactor.handleTableViewScroll(topPosition: topPosition)
    }
}

extension LibraryController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeue(with: LibraryCarouselCell.self, for: indexPath)
        return cell
    }
}
