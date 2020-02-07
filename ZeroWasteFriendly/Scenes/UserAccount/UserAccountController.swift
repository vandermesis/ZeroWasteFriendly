//
//  UserAccountController.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//
  
import UIKit

protocol UserAccountPresentable: MainViewController {
    func displayUserAccount()
}

final class UserAccountController: MainViewController {

    private let interactor: UserAccountInteractor

    init(interactor: UserAccountInteractor) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        interactor.getUserAccount()
    }

    @IBAction private func addButtonPressed(_ sender: UIBarButtonItem) {

    }
}

extension UserAccountController: UserAccountPresentable {

    func displayUserAccount() {
        
    }
}

private extension UserAccountController {

    private func setupNavigationBar() {
        title = R.string.localizable.userAccountTitle()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                            target: self,
                                                            action: #selector(addButtonPressed(_:)))
    }
}
