//
//  ZoomAndSnapFlowLayout.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/03/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import UIKit

final class ZoomAndSnapFlowLayout: UICollectionViewFlowLayout {

    private var viewWidth: CGFloat
    private var cellWidht: CGFloat {
        return viewWidth * 0.75
    }

    private let activeDistance: CGFloat = 200
    private let zoomFactor: CGFloat = 0.15

    init(viewWidth: CGFloat) {
        self.viewWidth = viewWidth
        super.init()
        scrollDirection = .horizontal
        minimumLineSpacing = 40
        itemSize = CGSize(width: cellWidht, height: 160)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepare() {
        guard let collectionView = collectionView else { return }
        let vInset = (collectionView.frame.height - collectionView.adjustedContentInset.top - collectionView.adjustedContentInset.bottom - itemSize.height) / 2
        let hInset = (collectionView.frame.width - collectionView.adjustedContentInset.right - collectionView.adjustedContentInset.left - itemSize.width) / 2
        sectionInset = UIEdgeInsets(top: vInset, left: hInset, bottom: vInset, right: hInset)
        super.prepare()
    }

    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        guard let collectionView = collectionView else { return nil }
        guard let safeAttributes = super.layoutAttributesForElements(in: rect) else { return nil }
        let rectAttributes = safeAttributes.map { $0.copy() as? UICollectionViewLayoutAttributes }
        let safeRectAttributes = rectAttributes.compactMap { $0 }
        let visibleRect = CGRect(origin: collectionView.contentOffset, size: collectionView.frame.size)
        for attribute in safeRectAttributes where attribute.frame.intersects(visibleRect) {
            let distance = visibleRect.midX - attribute.center.x
            let normalizedDistance = distance / activeDistance
            if distance.magnitude < activeDistance {
                let zoom = 1 + zoomFactor * (1 - normalizedDistance.magnitude)
                attribute.transform3D = CATransform3DMakeScale(zoom, zoom, 1)
                attribute.zIndex = Int(zoom.rounded())
            }
        }
        return safeRectAttributes
    }

    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint {
        guard let collectionView = collectionView else { return .zero }
        let targetRect = CGRect(x: proposedContentOffset.x, y: 0, width: collectionView.frame.width, height: collectionView.frame.height)
        guard let rectAttributes = super.layoutAttributesForElements(in: targetRect) else { return .zero }
        var offsetAdjustment = CGFloat.greatestFiniteMagnitude
        let horizontalCenter = proposedContentOffset.x + collectionView.frame.width / 2
        for layoutAttributes in rectAttributes {
            let itemHorizontalCenter = layoutAttributes.center.x
            if (itemHorizontalCenter - horizontalCenter).magnitude < offsetAdjustment.magnitude {
                offsetAdjustment = itemHorizontalCenter - horizontalCenter
            }
        }
        return CGPoint(x: proposedContentOffset.x + offsetAdjustment, y: proposedContentOffset.y)
    }

    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return true
    }

    override func invalidationContext(forBoundsChange newBounds: CGRect) -> UICollectionViewLayoutInvalidationContext {
        guard let context = super.invalidationContext(forBoundsChange: newBounds) as? UICollectionViewFlowLayoutInvalidationContext else {
            return UICollectionViewLayoutInvalidationContext()
        }
        context.invalidateFlowLayoutDelegateMetrics = newBounds.size != collectionView?.bounds.size
        return context
    }
}
