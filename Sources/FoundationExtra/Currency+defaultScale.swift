//
//  File.swift
//  
//
//  Created by Yuhao Zhang on 2023-05-29.
//

import Foundation

extension Locale {
  
  public static func defaultScale(for currencyCode: String) -> Int {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .currency
    numberFormatter.currencyCode = currencyCode
    return numberFormatter.maximumFractionDigits
  }
}

@available(macOS 13, *)
@available(iOS 16, *)
extension Locale.Currency {
  
  var defaultScale: Int {
    Locale.defaultScale(for: self.identifier)
  }
}
