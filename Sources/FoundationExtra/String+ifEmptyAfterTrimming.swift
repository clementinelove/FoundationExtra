//
//  File.swift
//  
//
//  Created by Yuhao Zhang on 2023-05-02.
//

import Foundation

extension String {
  
  public func nilIfEmpty(afterTrimming characters: CharacterSet) -> Self? {
    self.trimmingCharacters(in: characters).isEmpty ? nil : self
  }
  
  public func emptyStringIfEmpty(afterTrimming characters: CharacterSet) -> Self {
    self.trimmingCharacters(in: characters).isEmpty ? "" : self
  }
}
