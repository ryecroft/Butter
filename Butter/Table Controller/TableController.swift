//
//  TextureTest2
//
//  Created by Stephen Horne on 26/11/17.
//  Copyright © 2017 Rockfax. All rights reserved.
//

import UIKit
import AsyncDisplayKit

open class TableController: UIViewController, ASTableDataSource, ASTableDelegate {

  open var tableNode : ASTableNode
  open var dataSource : TableDataSource
  
  public init() {
    let tn = ASTableNode(style: .plain)
    tableNode = tn
    dataSource = TableDataSource()
    super.init(nibName: nil, bundle: nil)
//    tableNode.isLayerBacked = false
//    tn.frame = UIScreen.main.bounds
    tn.view.separatorStyle = .none
    tn.dataSource = dataSource
    tn.delegate = self
  }
  
  
  public required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  override open func viewDidLoad() {
    view.addSubnode(tableNode)
  }
  
  
  override open func viewWillLayoutSubviews() {
    tableNode.frame = view.bounds
  }
  
  
}

