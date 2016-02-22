//
//  TesteTableViewController.swift
//  WinninApp
//
//  Created by Flávio Caetano on 2/22/16.
//  Copyright © 2016 Winnin. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa


class ExperimentTableViewController: UITableViewController {
  
  private let disposeBag = DisposeBag()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    tableView.rx_itemSelected.subscribeNext { [unowned self] indexPath in
      self.view.endEditing(true)
      self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
      
      print(indexPath)
      }.addDisposableTo(disposeBag)
  }
}
