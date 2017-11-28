//
//  TextureTest2
//
//  Created by Stephen Horne on 27/11/17.
//  Copyright © 2017 Rockfax. All rights reserved.
//

import Foundation
import AsyncDisplayKit

@objc public protocol CellDefinition {
  @objc func nodeBlock() -> ASCellNodeBlock
}
