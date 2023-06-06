//
//  File.swift
//  
//
//  Created by Yuhao Zhang on 2023-05-26.
//

import Foundation

extension String {
  public func surrounded(by string: String) -> String {
    "\(string)\(self)\(string)"
  }
  
  public func prefixed(_ prefix: String) -> String {
    "\(prefix)\(self)"
  }
  
  public func suffixed(_ suffix: String) -> String {
    "\(self)\(suffix)"
  }
}
