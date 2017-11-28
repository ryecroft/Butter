//
//  TextureTest2
//
//  Created by Stephen Horne on 27/11/17.
//  Copyright © 2017 Rockfax. All rights reserved.
//

import UIKit
import AsyncDisplayKit

@objc open class HeaderDefinition: NSObject, CellDefinition, ASNetworkImageNodeDelegate {
  
  open var imageURL : URL?
  
  open func nodeBlock() -> ASCellNodeBlock {
    return {
      let node = HeaderCellNode()
      node.imageNode.url = self.imageURL
      node.imageNode.contentMode = .scaleAspectFill 
      node.imageNode.delegate = self
      node.imageNode.placeholderEnabled = true
      node.imageNode.placeholderColor = UIColor.lightGray
      node.imageNode.placeholderFadeDuration = 0.5
      return node
    }
  }
  
}


extension HeaderDefinition {
  
  public func imageNode(_ imageNode: ASNetworkImageNode, didFailWithError error: Error) {
    print(error.localizedDescription)
  }
  
}
