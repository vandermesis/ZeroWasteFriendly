//
//  LibraryListController.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//
  
import UIKit

protocol LibraryListPresentable: UIViewController {

}

final class LibraryListController: UIViewController {

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
    }

}

extension LibraryListController: LibraryListPresentable {

}
