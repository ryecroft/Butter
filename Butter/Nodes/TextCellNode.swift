//
//  TextureTest2
//
//  Created by Stephen Horne on 27/11/17.
//  Copyright © 2017 Rockfax. All rights reserved.
//

import UIKit
import AsyncDisplayKit

@objc open class TextCellNode: ASCellNode {

  
  open var textNode : ASTextNode
  
  override public init() {
    textNode = ASTextNode()
    
    super.init()
    
    textNode.placeholderEnabled = true
    textNode.placeholderColor = UIColor.gray
    textNode.placeholderFadeDuration = 0.5
    
    self.selectionStyle = .none
    
    addSubnode(textNode)
  }
  
  
  override open func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
    let textInsetSpec = ASInsetLayoutSpec(insets: UIEdgeInsets.init(top: 16, left: 16, bottom: 0, right: 16), child: textNode)
    
    return textInsetSpec
  }
  
  
  func attributedDescription(forString string: String) -> NSAttributedString {
    let descriptionAttributes = [
      NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: .body), 
      NSAttributedStringKey.foregroundColor: UIColor.black, 
      NSAttributedStringKey.backgroundColor: UIColor.clear] as [NSAttributedStringKey : Any]
    return NSAttributedString(string: string, attributes: descriptionAttributes)
  }
  
}
