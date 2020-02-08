//
//  ActivityInfoController.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//
  
import UIKit

protocol ActivityInfoPresentable: MainViewController {
    func displayActivityInfo()
}

final class ActivityInfoController: MainViewController {

    private let interactor: ActivityInfoInteractor

    init(interactor: ActivityInfoInteractor) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        interactor.getActivityInfo()
    }

    @IBAction private func addButtonPressed(_ sender: UIBarButtonItem) {

    }
}

extension ActivityInfoController: ActivityInfoPresentable {

    func displayActivityInfo() {
        
    }
}

private extension ActivityInfoController {

    private func setupNavigationBar() {
        title = R.string.localizable.activityInfoTitle()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                            target: self,
                                                            action: #selector(addButtonPressed(_:)))
    }
}
