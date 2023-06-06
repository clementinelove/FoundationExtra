//
//  File.swift
//  
//
//  Created by Yuhao Zhang on 2023-05-10.
//

import Foundation

extension Decimal {
  
  /// The scale value specifies the number of digits result can have after its decimal point. roundingMode specifies the way that number is rounded off.
  public func rounded(_ scale: Int, _ roundingMode: NSDecimalNumber.RoundingMode) -> Decimal {
    var result = Decimal()
    var localCopy = self
    NSDecimalRound(&result, &localCopy, scale, roundingMode)
    return result
  }
}
