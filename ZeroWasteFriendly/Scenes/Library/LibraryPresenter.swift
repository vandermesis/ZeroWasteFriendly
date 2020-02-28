//
//  LibraryPresenter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 27/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

protocol LibraryPresenter: SpinnerPresenter, AlertPresenter {
    func presentPosts(posts: [Post])
}

final class LibraryPresenterImpl<T: LibraryPresentable>: MainPresenter<T> {}

extension LibraryPresenterImpl: LibraryPresenter {

    func presentPosts(posts: [Post]) {
        controller?.displayPosts(posts: posts)
    }
}
