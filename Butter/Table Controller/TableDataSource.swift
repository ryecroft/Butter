//
//  TextureTest2
//
//  Created by Stephen Horne on 27/11/17.
//  Copyright © 2017 Rockfax. All rights reserved.
//

import UIKit
import AsyncDisplayKit

@objc open class TableDataSource: NSObject, ASTableDataSource, ASTableDelegate {
  
  @objc open var contents = [CellDefinition]()
  
  
  public override init() {
    super.init()
    contents = generateContents()
  }
  
  
  open func generateContents() -> [CellDefinition] {
    let result = [CellDefinition]()
    
    return result
  }
  
  
  open func tableNode(_ tableNode: ASTableNode, numberOfRowsInSection section: Int) -> Int {
    return contents.count
  }
  
  
  open func tableNode(_ tableNode: ASTableNode, nodeBlockForRowAt indexPath: IndexPath) -> ASCellNodeBlock {
    let definition = contents[indexPath.row]
    
    return definition.nodeBlock()
  }

}
