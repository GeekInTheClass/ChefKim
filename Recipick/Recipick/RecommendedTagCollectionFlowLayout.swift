//
//  RecommendedTagCollectionFlowLayout.swift
//  Recipick
//
//  Created by ParkDongHyuck on 2017. 6. 11..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import UIKit

class RecommendedTagCollectionFlowLayout: UICollectionViewFlowLayout {
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        print("blablablabla")
        
        let attributesForElementsInRect = super.layoutAttributesForElements(in: rect)
        var newAttributesForElementsInRect = [UICollectionViewLayoutAttributes]()
        
        // use a value to keep track of left margin
        var leftMargin: CGFloat = 0.0;
        
        for attributes in attributesForElementsInRect! {
            let refAttributes = attributes
            
            // assign value if next row
            if (refAttributes.frame.origin.x == self.sectionInset.left) {
                leftMargin = self.sectionInset.left
            }
            else {
                // set x position of attributes to current margin
                var newLeftAlignedFrame = refAttributes.frame
                newLeftAlignedFrame.origin.x = leftMargin
                refAttributes.frame = newLeftAlignedFrame
            }
            
            // calculate new value for current margin
            leftMargin += refAttributes.frame.size.width
            newAttributesForElementsInRect.append(refAttributes)
        }
        
        return newAttributesForElementsInRect
    }
}
