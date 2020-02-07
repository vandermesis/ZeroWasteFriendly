//
//  LibraryListPresenter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 07/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol LibraryListPresenter {
    func toggleSpinner(_ state: Bool)
    func presentLibraryList()
}

final class LibraryListPresenterImpl {

    weak var controller: LibraryListPresentable?
}

extension LibraryListPresenterImpl: LibraryListPresenter {

    func toggleSpinner(_ state: Bool) {

    }

    func presentLibraryList() {

    }
}
