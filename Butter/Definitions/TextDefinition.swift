//
//  TextureTest2
//
//  Created by Stephen Horne on 27/11/17.
//  Copyright © 2017 Rockfax. All rights reserved.
//

import UIKit
import AsyncDisplayKit

@objc open class TextDefinition: NSObject, CellDefinition {
  
  
  open var text = ""
  
  
  public func nodeBlock() -> ASCellNodeBlock {
    return {
      let node = TextCellNode()
      node.textNode.attributedText = self.attributedDescription(forString:self.text)
      return node
    }
  }
  
  
  open func attributedDescription(forString string: String) -> NSAttributedString {
    let descriptionAttributes = [
      NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: .body), 
      NSAttributedStringKey.foregroundColor: UIColor.black, 
      NSAttributedStringKey.backgroundColor: UIColor.clear] as [NSAttributedStringKey : Any]
    return NSAttributedString(string: string, attributes: descriptionAttributes)
  }
  
  
}

