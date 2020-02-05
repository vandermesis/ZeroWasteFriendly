//
//  UserAccountSignUpController.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//
  
import UIKit

protocol UserAccountSignUpPresentable: UIViewController {

}

final class UserAccountSignUpController: UIViewController {

    private let interactor: UserAccountSignUpInteractor

    init(interactor: UserAccountSignUpInteractor) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension UserAccountSignUpController: UserAccountSignUpPresentable {

}
