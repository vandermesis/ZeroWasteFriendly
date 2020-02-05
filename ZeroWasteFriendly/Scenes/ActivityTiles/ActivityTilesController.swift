//
//  ActivityTilesController.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//
  
import UIKit

protocol ActivityTilesPresentable: UIViewController {

}

final class ActivityTilesController: UIViewController {

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
    }

}

extension ActivityTilesController: ActivityTilesPresentable {

}
