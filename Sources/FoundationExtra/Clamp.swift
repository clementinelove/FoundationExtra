//
//  Clamp.swift
//  
//
//  Created by Yuhao Zhang on 2023-03-13.
//

import Foundation

extension Comparable {
    public func clamped(to limits: ClosedRange<Self>) -> Self {
        return min(max(self, limits.lowerBound), limits.upperBound)
    }
}

#if swift(<5.1)
extension Strideable where Stride: SignedInteger {
    public func clamped(to limits: CountableClosedRange<Self>) -> Self {
        return min(max(self, limits.lowerBound), limits.upperBound)
    }
}
#endif
