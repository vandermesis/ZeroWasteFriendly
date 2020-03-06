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
    func expandPost(id: String)
    func animateTopBar(_ state: Bool)
}

final class LibraryPresenterImpl<T: LibraryPresentable>: MainPresenter<T> {

    private var postsDisplayable = [PostDisplayable]()
}

extension LibraryPresenterImpl: LibraryPresenter {

    func presentPosts(posts: [Post]) {
        let displayable = posts.map { PostDisplayable(object: $0, expanded: false) }
        postsDisplayable = displayable
        controller?.displayPosts(posts: displayable)
    }

    func expandPost(id: String) {
        var convertedPosts = [PostDisplayable]()
        postsDisplayable.forEach { post in
            if post.id == id {
                post.expanded.toggle()
            }
            convertedPosts.append(post)
        }
        controller?.displayPosts(posts: convertedPosts)
    }

    func animateTopBar(_ state: Bool) {
        var height: CGFloat {
            state ? 50 : 150
        }
        controller?.animateTopBarToHeight(height: height)
    }
}
