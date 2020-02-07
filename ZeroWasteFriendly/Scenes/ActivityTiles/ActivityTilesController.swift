//
//  ActivityTilesController.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//
  
import UIKit

protocol ActivityTilesPresentable: MainViewController {

}

final class ActivityTilesController: MainViewController {

    private let interactor: ActivityTilesInteractor

    init(interactor: ActivityTilesInteractor) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
    }

    @IBAction private func addButtonPressed(_ sender: UIBarButtonItem) {

    }

}

extension ActivityTilesController: ActivityTilesPresentable {

}

private extension ActivityTilesController {

    private func setupNavigationBar() {
        title = R.string.localizable.activityTilesTitle()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                            target: self,
                                                            action: #selector(addButtonPressed(_:)))
    }
}
