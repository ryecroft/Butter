//
//  TextureTest2
//
//  Created by Stephen Horne on 27/11/17.
//  Copyright © 2017 Rockfax. All rights reserved.
//

import UIKit
import AsyncDisplayKit

@objc open class TitleAndTextDefinition: NSObject, CellDefinition {
  
  
  open var text = ""
  open var title = ""
  
  
  open func nodeBlock() -> ASCellNodeBlock {
    return {
      let node = TitleAndTextCellNode()
      node.titleNode.attributedText = self.attributedTitle(forString:self.title)
      node.textNode.attributedText = self.attributedDescription(forString:self.text)
      return node
    }
  }
  
  
  open func attributedTitle(forString string: String) -> NSAttributedString {
    let descriptionAttributes = [
      NSAttributedStringKey.font: UIFont.systemFont(ofSize: 20, weight: .bold), 
      NSAttributedStringKey.foregroundColor: UIColor.black, 
      NSAttributedStringKey.backgroundColor: UIColor.clear] as [NSAttributedStringKey : Any]
    return NSAttributedString(string: string, attributes: descriptionAttributes)
  }
  
  
  open func attributedDescription(forString string: String) -> NSAttributedString {
    let descriptionAttributes = [
      NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: .body), 
      NSAttributedStringKey.foregroundColor: UIColor.black, 
      NSAttributedStringKey.backgroundColor: UIColor.clear] as [NSAttributedStringKey : Any]
    return NSAttributedString(string: string, attributes: descriptionAttributes)
  }
  

}
