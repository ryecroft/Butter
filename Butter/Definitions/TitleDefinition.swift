//
//  TitleDefinition.swift
//  Rockfax
//
//  Created by Stephen Horne on 27/11/17.
//  Copyright © 2017 Rockfax. All rights reserved.
//

import UIKit
import AsyncDisplayKit

@objc open class TitleDefinition: NSObject, CellDefinition {
  
  
  open var title = ""
  
  
  open func nodeBlock() -> ASCellNodeBlock {
    return {
      let node = TitleNode()
      node.titleNode.attributedText = self.attributedTitle(forString:self.title)
      return node
    }
  }
  
  
  open func attributedTitle(forString string: String) -> NSAttributedString {
    let descriptionAttributes = [
      NSAttributedStringKey.font: UIFont.systemFont(ofSize: 34, weight: .bold), 
      NSAttributedStringKey.foregroundColor: UIColor.black, 
      NSAttributedStringKey.backgroundColor: UIColor.clear] as [NSAttributedStringKey : Any]
    return NSAttributedString(string: string, attributes: descriptionAttributes)
  }
  
}

