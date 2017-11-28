//
//  TitleNode.swift
//  Rockfax
//
//  Created by Stephen Horne on 27/11/17.
//  Copyright © 2017 Rockfax. All rights reserved.
//

import UIKit
import AsyncDisplayKit

@objc open class TitleNode: ASCellNode {
  
  
  open var titleNode : ASTextNode
  
  override public init() {
    titleNode = ASTextNode()
    titleNode.maximumNumberOfLines = 1
    titleNode.pointSizeScaleFactors = [0.9, 0.8, 0.7, 0.6, 0.5, 0.4]
    
    super.init()
    
    self.style.minHeight = ASDimension(unit: .points, value: 66)
    self.selectionStyle = .none
    
    addSubnode(titleNode)
  }
  
  
  override open func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
    let insets = UIEdgeInsets.init(top: 20, left: 16, bottom: 5, right: 16)
    let titleInsetSpec = ASInsetLayoutSpec(insets: insets, child: titleNode)
    let relative = ASRelativeLayoutSpec(horizontalPosition: .start, verticalPosition: .end, sizingOption: [], child: titleInsetSpec)
    
    return relative
  }
  
  
}
