//
//  UISearchBar+Rx.swift
//  WinninApp
//
//  Created by Flávio Caetano on 9/24/15.
//  Copyright (c) 2015 Winnin. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

extension UISearchBar {
  
  public var rx_searchTapped: Observable<UISearchBar> {
    return Observable.deferred { [weak self] in
      return (self?.rx_delegate.observe("searchBarSearchButtonClicked:") ?? Observable.empty())
        .map { $0.first! as! UISearchBar }
    }
  }
  
  public var rx_cancelTapped: Observable<UISearchBar> {
    return Observable.deferred { [weak self] in
      return (self?.rx_delegate.observe("searchBarCancelButtonClicked:") ?? Observable.empty())
        .map { $0.first! as! UISearchBar }
    }
  }
}