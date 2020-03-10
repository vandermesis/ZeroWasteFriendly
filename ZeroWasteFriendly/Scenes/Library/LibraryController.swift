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
    func animateCarouselHeight(state: Bool)
}

final class LibraryController: MainViewController {

    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var carouselCollectionView: UICollectionView!
    @IBOutlet private var collectionViewHidden: NSLayoutConstraint!
    
    private var postsDataSource = [PostDisplayable]()
    private var carouselCellWidth: CGFloat = 0

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
        let viewWidth = self.view.bounds.size.width
        carouselCellWidth = viewWidth * Constants.Library.carouselCellWidthMultiplier
        let cellInset = (viewWidth / 2) - (carouselCellWidth / 2)
        carouselCollectionView.contentInset.left = cellInset
        carouselCollectionView.contentInset.right = cellInset
        carouselCollectionView.reloadData()
        carouselCollectionView.snapCollectionViewCellToCenter()
    }
}

extension LibraryController: LibraryPresentable {

    func displayPosts(posts: [PostDisplayable]) {
        postsDataSource = posts
        tableView.reloadData()
    }

    func animateCarouselHeight(state: Bool) {
        UIView.animate(withDuration: Constants.Library.quarterSecond) {
            self.collectionViewHidden.isActive = state
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
        let isScrolling = tableView.contentOffset.y > 0
        interactor.handleTableViewScroll(scrolling: isScrolling)
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        carouselCollectionView.snapCollectionViewCellToCenter()
    }

    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if !decelerate {
            carouselCollectionView.snapCollectionViewCellToCenter()
        }
    }
}

extension LibraryController: UICollectionViewDataSource {
    //TODO: Connect with proper collection view data source
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    //TODO: Connect with proper collection view data source
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeue(with: LibraryCarouselCell.self, for: indexPath)
        return cell
    }
}

extension LibraryController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellSize = CGSize(width: carouselCellWidth, height: Constants.Library.carouselCellHeight)
        return cellSize
    }
}
