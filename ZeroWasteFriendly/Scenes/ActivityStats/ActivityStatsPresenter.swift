//
//  ActivityStatsPresenter.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 05/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

protocol ActivityStatsPresenter {

}

final class ActivityStatsPresenterImpl: ActivityStatsPresenter {

    weak var controller: ActivityStatsPresentable?
}
