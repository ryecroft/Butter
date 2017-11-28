//
//  TextureTest2
//
//  Created by Stephen Horne on 27/11/17.
//  Copyright © 2017 Rockfax. All rights reserved.
//

import UIKit
import AsyncDisplayKit

@objc open class TitleAndTextCellNode: ASCellNode {
  
  
  open var titleNode : ASTextNode
  open var textNode : ASTextNode
  
  override public init() {
    textNode = ASTextNode()
    titleNode = ASTextNode()
    
    super.init()
    
    self.selectionStyle = .none
    
    addSubnode(titleNode)
    addSubnode(textNode)
  }
  
  
  override open func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
    var insets = UIEdgeInsets.init(top: 20, left: 16, bottom: 0, right: 16)
    let titleInsetSpec = ASInsetLayoutSpec(insets: insets, child: titleNode)
    insets.top = 10
    let textInsetSpec = ASInsetLayoutSpec(insets: insets, child: textNode)
    let stackSpec = ASStackLayoutSpec()
    stackSpec.direction = .vertical
    stackSpec.children = [titleInsetSpec, textInsetSpec]
    
    return stackSpec
  }

  
}
