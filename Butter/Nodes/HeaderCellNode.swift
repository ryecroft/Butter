//
//  TextureTest2
//
//  Created by Stephen Horne on 27/11/17.
//  Copyright © 2017 Rockfax. All rights reserved.
//

import UIKit
import AsyncDisplayKit

@objc open class HeaderCellNode: ASCellNode, ASNetworkImageNodeDelegate {
  
  open var imageNode : ASNetworkImageNode
  
  override public init() {
    imageNode = ASNetworkImageNode()
    super.init()
    addSubnode(imageNode)
  }
  
  
  override open func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
    let ratioImageSpec = ASRatioLayoutSpec(ratio: 0.5, child: imageNode)
    return ratioImageSpec
  }

}


extension HeaderCellNode {
  
  open func imageNode(_ imageNode: ASNetworkImageNode, didFailWithError error: Error) {
    print(error.localizedDescription)
  }
  
}
