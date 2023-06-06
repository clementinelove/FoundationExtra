//
//  File.swift
//  
//
//  Created by Yuhao Zhang on 2023-05-30.
//

import Foundation

extension Locale {
  public static func localizedCurrenyCode(_ currencyCode: String) -> String? {
    Locale.autoupdatingCurrent.localizedString(forCurrencyCode: currencyCode)
  }
}
