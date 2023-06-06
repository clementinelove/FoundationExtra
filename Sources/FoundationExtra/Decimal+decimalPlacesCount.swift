//
//  File.swift
//  
//
//  Created by Yuhao Zhang on 2023-05-29.
//

import Foundation

@available(iOS 15.0, *)
@available(macOS 13.0, *)
extension Decimal {
  public var decimalPlacesCount: Int {
    let numberStr = self.formatted(.number.locale(.init(identifier: "en_US")))
    let numberSplitByDecimalPoint = numberStr.split(separator: ".")
    return numberSplitByDecimalPoint.count > 1 ? numberSplitByDecimalPoint[1].count : 0
  }
  
  public func decimalPlacesCount(for currencyCode: String) -> Int {
    max(self.decimalPlacesCount, Locale.defaultScale(for: currencyCode))
  }
}

