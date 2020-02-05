//
//  ActTilesController.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//
  
import UIKit

protocol ActTilesPresentable: UIViewController {

}

final class ActTilesController: UIViewController {

    private let interactor: ActTilesInteractor

    init(interactor: ActTilesInteractor) {
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

extension ActTilesController: ActTilesPresentable {

}
