//
//  ActivityInfoPresenter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol ActivityInfoPresenter {

}

final class ActivityInfoPresenterImpl: ActivityInfoPresenter {

    weak var controller: ActivityInfoPresentable?
}
