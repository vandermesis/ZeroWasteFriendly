//
//  UICollectionView+Snap.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 10/03/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

extension UICollectionView {

    func snapCollectionViewCellToCenter() {
        self.decelerationRate = UIScrollView.DecelerationRate.fast
        let visibleCenterPositionOfScrollView = Float(self.contentOffset.x + (self.bounds.size.width / 2))
        var closestCellIndex = -1
        var closestDistance: Float = .greatestFiniteMagnitude
        for i in 0..<self.visibleCells.count {
            let cell = self.visibleCells[i]
            let cellWidth = cell.bounds.size.width
            let cellCenter = Float(cell.frame.origin.x + cellWidth / 2)
            let distance: Float = fabsf(visibleCenterPositionOfScrollView - cellCenter)
            if distance < closestDistance {
                closestDistance = distance
                guard let safeClosestCellIndex = self.indexPath(for: cell)?.row else { return }
                closestCellIndex = safeClosestCellIndex
            }
        }
        if closestCellIndex != -1 {
            let closestCellIndexPath = IndexPath(row: closestCellIndex, section: 0)
            self.scrollToItem(at: closestCellIndexPath, at: .centeredHorizontally, animated: true)
        }
    }
}
